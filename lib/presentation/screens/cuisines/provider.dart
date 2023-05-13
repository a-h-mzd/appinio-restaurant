import 'dart:async';

import 'package:appinio_restaurant/domain/cuisines/models/cuisine.dart';
import 'package:appinio_restaurant/domain/cuisines/usecase.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

@injectable
class CuisinesProvider extends ChangeNotifier {
  final CuisinesUsecase cuisinesUsecase;

  CuisinesProvider({
    required this.cuisinesUsecase,
  }) {
    sub = _cuisinesStream.listen(_cuisineStreamListener);
  }

  late final StreamSubscription sub;

  List<CuisineModel>? _cuisines;

  String _searchTerm = '';

  List<CuisineModel>? get cuisines {
    final term = _searchTerm.trim().toLowerCase();
    if (term.isEmpty) {
      return _cuisines;
    }
    return _cuisines
        ?.where((cuisine) => cuisine.name.toLowerCase().contains(term))
        .toList();
  }

  Stream<List<CuisineModel>> get _cuisinesStream {
    final stream = cuisinesUsecase.cuisinesStream();
    return stream
        .map((snapshot) => snapshot.docs.map((doc) => doc.data()).toList());
  }

  void _cuisineStreamListener(List<CuisineModel> cuisines) {
    _cuisines = cuisines;
    notifyListeners();
  }

  void onSearchTermChanged(String searchTerm) {
    _searchTerm = searchTerm;
    notifyListeners();
  }

  @override
  void dispose() {
    sub.cancel();

    super.dispose();
  }
}
