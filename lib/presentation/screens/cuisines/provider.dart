import 'dart:async';

import 'package:appinio_restaurant/domain/cuisines/models/cuisine.dart';
import 'package:appinio_restaurant/domain/cuisines/usecase.dart';
import 'package:appinio_restaurant/presentation/common/appinio_provider.dart';
import 'package:appinio_restaurant/presentation/screens/cuisines/router.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

@injectable
class CuisinesProvider extends AppinioProvider<CuisinesRouter> {
  final CuisinesUsecase cuisinesUsecase;

  CuisinesProvider({
    required super.router,
    required this.cuisinesUsecase,
    @factoryParam required super.context,
  }) {
    _initialize();
  }

  void _initialize() {
    final stream = cuisinesUsecase.cuisinesStream();
    sub = stream.listen(_cuisineStreamListener);
  }

  late final StreamSubscription sub;

  List<QueryDocumentSnapshot<CuisineModel>>? _cuisines;

  String _searchTerm = '';

  List<QueryDocumentSnapshot<CuisineModel>>? get cuisines {
    final term = _searchTerm.trim().toLowerCase();
    if (term.isEmpty) {
      return _cuisines;
    }
    return _cuisines
        ?.where((cuisine) => cuisine.data().name.toLowerCase().contains(term))
        .toList();
  }

  void _cuisineStreamListener(QuerySnapshot<CuisineModel> cuisines) {
    _cuisines = cuisines.docs;
    notifyListeners();
  }

  void onSearchTermChanged(String searchTerm) {
    _searchTerm = searchTerm;
    notifyListeners();
  }

  void onCuisineTap(String cuisineId) {
    router.showCuisineDetails(cuisineId);
  }

  @override
  void dispose() {
    sub.cancel();

    super.dispose();
  }
}
