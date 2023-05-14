import 'package:appinio_restaurant/domain/reservations/repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: ReservationsRepository)
class ReservationsApi implements ReservationsRepository {
  final FirebaseFirestore firestore;

  const ReservationsApi({required this.firestore});

  @override
  CollectionReference<Map<String, dynamic>> reservationsStream() {
    return firestore.collection('Reservations');
  }
}
