import 'package:appinio_restaurant/domain/reservations/models/reservation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'reservation_status.freezed.dart';

@freezed
sealed class ReservationStatus with _$ReservationStatus {
  const factory ReservationStatus.available() = ReservationStatusAvailable;
  const factory ReservationStatus.reserved() = ReservationStatusReserved;
  const factory ReservationStatus.reservedByUser({required String username}) =
      ReservationStatusReservedByUser;

  factory ReservationStatus.by({
    required final String userId,
    required final ReservationModel? reservation,
  }) {
    if (reservation == null) {
      return const ReservationStatus.available();
    } else if (reservation.userId == userId) {
      return ReservationStatus.reservedByUser(username: reservation.username);
    } else {
      return const ReservationStatus.reserved();
    }
  }
}
