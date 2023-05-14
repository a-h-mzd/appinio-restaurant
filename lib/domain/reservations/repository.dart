import 'package:cloud_firestore/cloud_firestore.dart';

abstract class ReservationsRepository {
  CollectionReference<Map<String, dynamic>> reservationsStream();

  Future<void> reserve({
    required String date,
    required MapEntry reservation,
  });

  Future<void> cancelReservation({
    required String date,
    required String tableId,
  });
}
