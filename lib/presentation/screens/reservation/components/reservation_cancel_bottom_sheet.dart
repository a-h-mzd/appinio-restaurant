import 'package:appinio_restaurant/domain/reservations/models/reservation_status.dart';
import 'package:appinio_restaurant/domain/reservations/usecase.dart';
import 'package:appinio_restaurant/domain/tables/models/table.dart';
import 'package:appinio_restaurant/l10n/localization.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ReservationCancelBottomSheet extends StatelessWidget {
  final String userId;
  final String tableId;
  final TableModel table;
  final DateTime selectedDate;
  final ReservationsUsecase reservationsUsecase;
  final void Function() onCancelBookingPressed;

  const ReservationCancelBottomSheet({
    super.key,
    required this.userId,
    required this.tableId,
    required this.table,
    required this.selectedDate,
    required this.reservationsUsecase,
    required this.onCancelBookingPressed,
  });

  @override
  Widget build(BuildContext context) {
    final reservationStream =
        reservationsUsecase.reservationsStream(date: selectedDate);
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(32.0),
        ),
      ),
      constraints: const BoxConstraints(
        maxWidth: 400,
      ),
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom,
      ),
      child: SafeArea(
        minimum: const EdgeInsets.all(30.0),
        child: DefaultTextStyle.merge(
          style: const TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.w300,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                context.localizations.cancelBookingQuestion,
                style: const TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 20.0),
              Text(table.name),
              const SizedBox(height: 10.0),
              Text(DateFormat('dd.MM.yyyy').format(selectedDate)),
              const SizedBox(height: 10.0),
              Text(DateFormat('HH:mma').format(selectedDate).toLowerCase()),
              const SizedBox(height: 10.0),
              Text(context.localizations.chairCount(table.chairCount)),
              const SizedBox(height: 30.0),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        fixedSize: const Size.fromHeight(44.0),
                        backgroundColor: const Color(0xFF141414),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      onPressed: () => context.router.pop(),
                      child: Text(
                        context.localizations.cancelBookingAnswerNegative,
                        style: const TextStyle(
                          fontSize: 16.0,
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 12.0),
                  Expanded(
                    child: StreamBuilder(
                      stream: reservationStream,
                      builder: (context, snapshot) {
                        final reservations = snapshot.data?.data();
                        final reservation =
                            reservations?.reservationFor(tableId: tableId);
                        final reservationStatus = ReservationStatus.by(
                          userId: userId,
                          reservation: reservation,
                        );
                        final isButtonActive = snapshot.hasData &&
                            reservationStatus
                                is ReservationStatusReservedByUser;

                        return ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            fixedSize: const Size.fromHeight(44.0),
                            backgroundColor: CupertinoColors.destructiveRed,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                          onPressed: isButtonActive
                              ? () {
                                  context.router.pop();
                                  onCancelBookingPressed();
                                }
                              : null,
                          child: Text(
                            context.localizations.cancelBookingAnswerPositive,
                            style: const TextStyle(
                              fontSize: 16.0,
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
