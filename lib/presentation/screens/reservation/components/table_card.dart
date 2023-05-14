import 'package:appinio_restaurant/domain/reservations/models/reservation_status.dart';
import 'package:appinio_restaurant/domain/tables/models/table.dart';
import 'package:flutter/material.dart';

class TableCard extends StatelessWidget {
  static const width = 163.0;
  static const height = 117.0;
  static const aspectRatio = width / height;

  final TableModel table;
  final ReservationStatus reservationStatus;
  final VoidCallback onTap;
  final bool ignoreTaps;

  const TableCard({
    super.key,
    required this.table,
    required this.reservationStatus,
    required this.onTap,
    required this.ignoreTaps,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final card = Container(
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            color: const Color(0xFFF4F4F4),
            borderRadius: BorderRadius.circular(12.0),
            border: Border.all(
              width: .5,
              color: Colors.black.withOpacity(.2),
            ),
          ),
          child: Material(
            color: Colors.transparent,
            child: IgnorePointer(
              ignoring: ignoreTaps,
              child: InkWell(
                onTap: onTap,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(
                        child: Text(
                          table.name,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.start,
                          style: const TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            IntrinsicWidth(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  const Text('Table for'),
                                  const SizedBox(height: 3),
                                  IntrinsicHeight(
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        const Icon(
                                          Icons.person_outline_rounded,
                                          size: 20,
                                        ),
                                        Text(
                                          '${table.chairCount}',
                                          style: const TextStyle(height: 1.2),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const Spacer(),
                            IntrinsicWidth(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  const Text('Status'),
                                  const SizedBox(height: 3),
                                  Text(
                                    reservationStatus.status(context),
                                    style: TextStyle(
                                      fontWeight: FontWeight.w300,
                                      color: reservationStatus.statusColor,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
        if (constraints.maxWidth < width) {
          return FittedBox(
            fit: BoxFit.fill,
            child: SizedBox(
              width: width,
              height: height,
              child: card,
            ),
          );
        } else {
          return card;
        }
      },
    );
  }
}

extension on ReservationStatus {
  String Function(BuildContext) get status {
    return switch (this) {
      ReservationStatusAvailable() => (context) => 'Available',
      ReservationStatusReserved() => (context) => 'Reserved',
      ReservationStatusReservedByUser() => (context) => 'Cancel',
    };
  }

  Color get statusColor {
    return switch (this) {
      ReservationStatusAvailable() => Colors.blue.shade600,
      ReservationStatusReserved() => Colors.grey.shade500,
      ReservationStatusReservedByUser() => Colors.red.shade700,
    };
  }
}
