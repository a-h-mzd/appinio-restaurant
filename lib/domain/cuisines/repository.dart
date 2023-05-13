import 'package:cloud_firestore/cloud_firestore.dart';

abstract class CuisinesRepository {
  CollectionReference<Map<String, dynamic>> cuisinesStream();
}
