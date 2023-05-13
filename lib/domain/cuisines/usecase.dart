import 'dart:async';

import 'package:appinio_restaurant/domain/cuisines/models/cuisine.dart';
import 'package:appinio_restaurant/domain/cuisines/repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class CuisinesUsecase {
  final CuisinesRepository cuisinesRepository;

  const CuisinesUsecase({
    required this.cuisinesRepository,
  });

  Stream<QuerySnapshot<CuisineModel>> cuisinesStream() {
    return cuisinesRepository
        .cuisinesStream()
        .withConverter(
          fromFirestore: (snapshot, _) =>
              CuisineModel.fromJson(snapshot.data()!),
          toFirestore: (model, _) => model.toJson(),
        )
        .snapshots();
  }
}
