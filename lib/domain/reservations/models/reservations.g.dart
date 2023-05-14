// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reservations.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ReservationsModel _$$_ReservationsModelFromJson(Map json) =>
    _$_ReservationsModel(
      reservations: (json['reservations'] as Map?)?.map(
        (k, e) => MapEntry(
            k, ReservationModel.fromJson(Map<String, Object?>.from(e as Map))),
      ),
    );

Map<String, dynamic> _$$_ReservationsModelToJson(
        _$_ReservationsModel instance) =>
    <String, dynamic>{
      'reservations': instance.reservations,
    };
