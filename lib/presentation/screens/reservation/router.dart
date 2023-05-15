import 'package:appinio_restaurant/domain/reservations/usecase.dart';
import 'package:appinio_restaurant/domain/tables/models/table.dart';
import 'package:appinio_restaurant/presentation/router/router.dart';
import 'package:appinio_restaurant/presentation/screens/reservation/components/reservation_bottom_sheet.dart';
import 'package:appinio_restaurant/presentation/screens/reservation/components/reservation_cancel_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@injectable
class ReservationRouter extends AppinioRouter {
  void showReservationBottomSheet({
    required String tableId,
    required TableModel table,
    required DateTime selectedDate,
    required ReservationsUsecase reservationsUsecase,
    required void Function(String username) onBookNowPressed,
  }) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      barrierColor: Colors.black.withOpacity(.5),
      builder: (context) {
        return ReservationBottomSheet(
          tableId: tableId,
          table: table,
          selectedDate: selectedDate,
          reservationsUsecase: reservationsUsecase,
          onBookNowPressed: onBookNowPressed,
        );
      },
    );
  }

  void showReservationCancelBottomSheet({
    required String userId,
    required String tableId,
    required TableModel table,
    required DateTime selectedDate,
    required ReservationsUsecase reservationsUsecase,
    required void Function() onCancelBookingPressed,
  }) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      barrierColor: Colors.black.withOpacity(.5),
      builder: (context) {
        return ReservationCancelBottomSheet(
          userId: userId,
          tableId: tableId,
          table: table,
          selectedDate: selectedDate,
          reservationsUsecase: reservationsUsecase,
          onCancelBookingPressed: onCancelBookingPressed,
        );
      },
    );
  }
}
