import 'package:cloud_firestore/cloud_firestore.dart';

abstract class TablesRepository {
  CollectionReference<Map<String, dynamic>> tablesStream();
}
