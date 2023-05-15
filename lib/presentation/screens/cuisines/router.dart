import 'package:appinio_restaurant/presentation/router/router.dart';
import 'package:injectable/injectable.dart';

@injectable
class CuisinesRouter extends AppinioRouter {
  void showCuisineDetails(String cuisineId) {
    router.push(CuisineRoute(cuisineId: cuisineId));
  }
}
