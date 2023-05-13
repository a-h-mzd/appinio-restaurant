import 'package:appinio_restaurant/domain/cuisines/repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: CuisinesRepository)
class CuisinesApi implements CuisinesRepository {
  final FirebaseFirestore firestore;

  const CuisinesApi({required this.firestore});

  @override
  CollectionReference<Map<String, dynamic>> cuisinesStream() {
    return firestore.collection('cuisine');
  }
}
