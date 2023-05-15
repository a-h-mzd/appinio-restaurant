import 'dart:async';

import 'package:appinio_restaurant/domain/cuisines/models/cuisine.dart';
import 'package:appinio_restaurant/domain/cuisines/usecase.dart';
import 'package:appinio_restaurant/presentation/common/appinio_provider.dart';
import 'package:appinio_restaurant/presentation/screens/cuisine/router.dart';
import 'package:collection/collection.dart';
import 'package:injectable/injectable.dart';

@injectable
class CuisineProvider extends AppinioProvider<CuisineRouter> {
  final CuisinesUsecase cuisinesUsecase;
  final String cuisineId;

  CuisineModel? cuisine;

  bool get noCuisineFound => _noCuisineFound;
  bool _noCuisineFound = false;

  CuisineProvider({
    required super.router,
    required this.cuisinesUsecase,
    @factoryParam required super.context,
    @factoryParam required this.cuisineId,
  }) {
    _initialize();
  }

  late final StreamSubscription _sub;

  void _initialize() {
    _sub = cuisinesUsecase.cuisinesStream().listen((snapshot) {
      cuisine = snapshot.docs
          .firstWhereOrNull((cuisine) => cuisine.id == cuisineId)
          ?.data();
      if (cuisine == null) {
        _noCuisineFound = true;
      }
      notifyListeners();
    });
  }

  @override
  void dispose() {
    _sub.cancel();

    super.dispose();
  }
}
