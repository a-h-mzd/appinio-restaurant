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

  Stream<DocumentSnapshot<ReservationsModel>> tablesStream({
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
}

extension on DateTime {
  String get asFirebaseDocumentPath => DateFormat('dd-MM-yyyy_HH').format(this);
}
