import 'package:appinio_restaurant/domain/reservations/models/reservation.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'reservations.freezed.dart';
part 'reservations.g.dart';

@freezed
class ReservationsModel with _$ReservationsModel {
  const factory ReservationsModel({
    final Map<dynamic, ReservationModel>? reservations,
  }) = _ReservationsModel;

  const ReservationsModel._();

  factory ReservationsModel.fromJson(Map<String, Object?> json) =>
      _$ReservationsModelFromJson(json);

  ReservationModel? reservationFor({required String tableId}) =>
      reservations?[tableId];
}
