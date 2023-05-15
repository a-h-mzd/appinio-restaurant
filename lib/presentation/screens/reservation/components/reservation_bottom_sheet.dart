import 'package:appinio_restaurant/domain/reservations/usecase.dart';
import 'package:appinio_restaurant/domain/tables/models/table.dart';
import 'package:appinio_restaurant/l10n/localization.dart';
import 'package:appinio_restaurant/presentation/components/text_field.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ReservationBottomSheet extends StatefulWidget {
  final String tableId;
  final TableModel table;
  final DateTime selectedDate;
  final ReservationsUsecase reservationsUsecase;
  final void Function(String username) onBookNowPressed;

  const ReservationBottomSheet({
    super.key,
    required this.tableId,
    required this.table,
    required this.selectedDate,
    required this.reservationsUsecase,
    required this.onBookNowPressed,
  });

  @override
  State<ReservationBottomSheet> createState() => _ReservationBottomSheetState();
}

class _ReservationBottomSheetState extends State<ReservationBottomSheet> {
  String username = '';

  @override
  Widget build(BuildContext context) {
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
                widget.table.name,
                style: const TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 20.0),
              Text(context.localizations.username),
              const SizedBox(height: 5.0),
              AppinioTextField(
                keyboardType: TextInputType.name,
                autofillHints: const [AutofillHints.name],
                textCapitalization: TextCapitalization.words,
                placeholder: context.localizations.reservationUsernameHint,
                onChanged: (username) =>
                    setState(() => this.username = username),
              ),
              const SizedBox(height: 15.0),
              Text(DateFormat('dd.MM.yyyy').format(widget.selectedDate)),
              const SizedBox(height: 10.0),
              Text(
                DateFormat('HH:mma').format(widget.selectedDate).toLowerCase(),
              ),
              const SizedBox(height: 10.0),
              Text(context.localizations.chairCount(widget.table.chairCount)),
              const SizedBox(height: 30.0),
              StreamBuilder(
                stream: widget.reservationsUsecase
                    .reservationsStream(date: widget.selectedDate)
                    .map((snapshot) => snapshot.data()),
                builder: (context, snapshot) {
                  final reservations = snapshot.data;
                  final tableReservation =
                      reservations?.reservationFor(tableId: widget.tableId);
                  final isButtonActive = snapshot.hasData &&
                      tableReservation == null &&
                      username.trim().isNotEmpty;

                  return ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      fixedSize: const Size.fromHeight(44.0),
                      backgroundColor: const Color(0xFF141414),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    onPressed: isButtonActive
                        ? () {
                            context.router.pop();
                            widget.onBookNowPressed(username);
                          }
                        : null,
                    child: Text(
                      context.localizations.bookNow,
                      style: const TextStyle(
                        fontSize: 16.0,
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
