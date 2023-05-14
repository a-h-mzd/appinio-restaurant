import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'reservation.freezed.dart';
part 'reservation.g.dart';

@freezed
class ReservationModel with _$ReservationModel {
  const factory ReservationModel({
    @JsonKey(name: 'user_id') required final String userId,
    required final String username,
  }) = _ReservationModel;

  factory ReservationModel.fromJson(Map<String, Object?> json) =>
      _$ReservationModelFromJson(json);
}
