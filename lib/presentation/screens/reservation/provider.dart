import 'dart:async';

import 'package:appinio_restaurant/domain/reservations/models/reservation_status.dart';
import 'package:appinio_restaurant/domain/reservations/models/reservations.dart';
import 'package:appinio_restaurant/domain/reservations/usecase.dart';
import 'package:appinio_restaurant/domain/tables/models/table.dart';
import 'package:appinio_restaurant/domain/tables/usecase.dart';
import 'package:appinio_restaurant/presentation/common/appinio_provider.dart';
import 'package:appinio_restaurant/presentation/helper/firebase_auth_helper.dart';
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
    @factoryParam required this.selectedDate,
    required this.reservationsUsecase,
    required this.tablesUsecase,
    required this.firebaseAuth,
  }) {
    tablesSubscription =
        tablesUsecase.tablesStream().listen(_tableStreamListener);
    reservationsSubscription = reservationsUsecase
        .tablesStream(date: selectedDate)
        .listen(_reservationsStreamListener);
  }

  late final StreamSubscription tablesSubscription;
  late final StreamSubscription reservationsSubscription;

  QuerySnapshot<TableModel>? _tables;
  DocumentSnapshot<ReservationsModel>? _reservations;

  bool get isLoading => _tables == null || _reservations == null;

  Map<String, TableModel> get tables => _tables?.docs.asTableListMap ?? {};

  ReservationStatus reservationStatusFor({required String tableId}) {
    final reservation = _reservations?.data()?.reservations?[tableId];
    return ReservationStatus.by(
      userId: firebaseAuth.uid,
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
  }) {
    final reservationStatus = reservationStatusFor(tableId: tableId);
    reservationStatus.whenOrNull(
      reserved: null,
      available: () {},
      reservedByUser: (username) {},
    );
  }

  @override
  void dispose() {
    tablesSubscription.cancel();
    reservationsSubscription.cancel();

    super.dispose();
  }
}
