import 'dart:async';

import 'package:appinio_restaurant/domain/reservations/models/reservations.dart';
import 'package:appinio_restaurant/domain/reservations/repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import 'package:intl/intl.dart';

@lazySingleton
class ReservationsUsecase {
  final ReservationsRepository reservationsRepository;

  const ReservationsUsecase({
    required this.reservationsRepository,
  });

  Stream<DocumentSnapshot<ReservationsModel>> reservationsStream({
    required final DateTime date,
  }) {
    return reservationsRepository
        .reservationsStream()
        .doc(date.asFirebaseDocumentPath)
        .withConverter(
          fromFirestore: (snapshot, _) =>
              ReservationsModel.fromJson(snapshot.data()!),
          toFirestore: (model, _) => model.toJson(),
        )
        .snapshots();
  }

  Future<void> reserve({
    required final DateTime date,
    required final String tableId,
    required final String uid,
    required final String username,
  }) {
    return reservationsRepository.reserve(
      date: date.asFirebaseDocumentPath,
      reservation: MapEntry(
        tableId,
        {
          'user_id': uid,
          'username': username,
        },
      ),
    );
  }

  Future<void> cancelReservation({
    required final DateTime date,
    required final String tableId,
  }) {
    return reservationsRepository.cancelReservation(
      date: date.asFirebaseDocumentPath,
      tableId: tableId,
    );
  }
}

extension on DateTime {
  String get asFirebaseDocumentPath => DateFormat('dd-MM-yyyy_HH').format(this);
}
