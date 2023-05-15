import 'dart:async';

import 'package:appinio_restaurant/domain/reservations/models/reservation_status.dart';
import 'package:appinio_restaurant/domain/reservations/models/reservations.dart';
import 'package:appinio_restaurant/domain/reservations/usecase.dart';
import 'package:appinio_restaurant/domain/tables/models/table.dart';
import 'package:appinio_restaurant/domain/tables/usecase.dart';
import 'package:appinio_restaurant/presentation/common/appinio_provider.dart';
import 'package:appinio_restaurant/presentation/helper/firebase_auth_helper.dart';
import 'package:appinio_restaurant/presentation/screens/reservation/guards/date_guard.dart';
import 'package:appinio_restaurant/presentation/screens/reservation/router.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

@injectable
class ReservationProvider extends AppinioProvider<ReservationRouter> {
  final ReservationsUsecase reservationsUsecase;
  final TablesUsecase tablesUsecase;
  final DateTime selectedDate;

  final FirebaseAuthHelper firebaseAuth;

  ReservationProvider({
    required super.router,
    @factoryParam required super.context,
    @factoryParam required String selectedDate,
    required this.reservationsUsecase,
    required this.tablesUsecase,
    required this.firebaseAuth,
  }) : selectedDate = DateGuard.parseDate(selectedDate)! {
    _initialize();
  }

  void _initialize() {
    tablesSubscription =
        tablesUsecase.tablesStream().listen(_tableStreamListener);
    reservationsSubscription = reservationsUsecase
        .reservationsStream(date: selectedDate)
        .listen(_reservationsStreamListener);
  }

  String get _uid => firebaseAuth.uid;

  late final StreamSubscription tablesSubscription;
  late final StreamSubscription reservationsSubscription;

  QuerySnapshot<TableModel>? _tables;
  DocumentSnapshot<ReservationsModel>? _reservations;

  bool get isLoading => _tables == null || _reservations == null;

  Map<String, TableModel> get tables => _tables?.docs.asTableListMap ?? {};

  ReservationStatus reservationStatusFor({required String tableId}) {
    final reservation = _reservations?.data()?.reservations?[tableId];
    return ReservationStatus.by(
      userId: _uid,
      reservation: reservation,
    );
  }

  void _tableStreamListener(QuerySnapshot<TableModel> snapshot) {
    _tables = snapshot;
    notifyListeners();
  }

  void _reservationsStreamListener(
    DocumentSnapshot<ReservationsModel> snapshot,
  ) {
    _reservations = snapshot;
    notifyListeners();
  }

  void onTableTap({
    required final String tableId,
    required final TableModel table,
  }) {
    final reservationStatus = reservationStatusFor(tableId: tableId);
    reservationStatus.whenOrNull(
      reserved: null,
      available: () {
        void onBookNowPressed(String username) {
          reservationsUsecase.reserve(
            date: selectedDate,
            tableId: tableId,
            uid: _uid,
            username: username,
          );
        }

        router.showReservationBottomSheet(
          tableId: tableId,
          table: table,
          selectedDate: selectedDate,
          reservationsUsecase: reservationsUsecase,
          onBookNowPressed: onBookNowPressed,
        );
      },
      reservedByUser: (username) {
        void onCancelBookingPressed() {
          reservationsUsecase.cancelReservation(
            date: selectedDate,
            tableId: tableId,
          );
        }

        router.showReservationCancelBottomSheet(
          userId: _uid,
          username: username,
          tableId: tableId,
          table: table,
          selectedDate: selectedDate,
          reservationsUsecase: reservationsUsecase,
          onCancelBookingPressed: onCancelBookingPressed,
        );
      },
    );
  }

  @override
  void dispose() {
    tablesSubscription.cancel();
    reservationsSubscription.cancel();

    super.dispose();
  }
}
