import 'dart:async';

import 'package:appinio_restaurant/domain/tables/repository.dart';
import 'package:appinio_restaurant/presentation/models/table.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class TablesUsecase {
  final TablesRepository tablesRepository;

  const TablesUsecase({
    required this.tablesRepository,
  });

  Stream<QuerySnapshot<TableModel>> tablesStream() {
    return tablesRepository
        .tablesStream()
        .withConverter(
          fromFirestore: (snapshot, _) => TableModel.fromJson(snapshot.data()!),
          toFirestore: (model, _) => model.toJson(),
        )
        .snapshots();
  }
}
