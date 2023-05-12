import 'package:appinio_restaurant/domain/tables/repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: TablesRepository)
class TablesApi implements TablesRepository {
  final FirebaseFirestore firestore;

  const TablesApi({required this.firestore});

  @override
  CollectionReference<Map<String, dynamic>> tablesStream() {
    return firestore.collection('Tables');
  }
}
