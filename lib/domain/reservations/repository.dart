import 'package:cloud_firestore/cloud_firestore.dart';

abstract class ReservationsRepository {
  CollectionReference<Map<String, dynamic>> reservationsStream();
}
