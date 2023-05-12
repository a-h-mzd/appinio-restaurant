import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

@module
abstract class FireStoreModule {
  @lazySingleton
  FirebaseFirestore get firestoreInstance => FirebaseFirestore.instance;
}
