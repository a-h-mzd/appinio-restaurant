import 'package:appinio_restaurant/domain/reservations/repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: ReservationsRepository)
class ReservationsApi implements ReservationsRepository {
  static const _reservationsCollectionPath = 'Reservations';
  static const _reservationsFieldPath = 'reservations';

  final FirebaseFirestore firestore;

  const ReservationsApi({required this.firestore});

  @override
  CollectionReference<Map<String, dynamic>> reservationsStream() {
    return firestore.collection(_reservationsCollectionPath);
  }

  @override
  Future<void> reserve({
    required String date,
    required MapEntry reservation,
  }) async {
    final doc = reservationsStream().doc(date);
    final reservations = Map.fromEntries([reservation]);
    await doc.set(
      {_reservationsFieldPath: reservations},
      SetOptions(merge: true),
    );
  }

  @override
  Future<void> cancelReservation({
    required String date,
    required String tableId,
  }) async {
    final doc = reservationsStream().doc(date);
    final reservationsSnapshot =
        await doc.get(const GetOptions(source: Source.server));
    final reservations = reservationsSnapshot.data()?[_reservationsFieldPath];
    if (reservations is! Map) {
      return;
    }

    reservations.remove(tableId);

    await doc.set({_reservationsFieldPath: reservations});
  }
}
