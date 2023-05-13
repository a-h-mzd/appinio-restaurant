import 'package:appinio_restaurant/domain/cuisines/models/cuisine.dart';
import 'package:appinio_restaurant/presentation/router/router.dart';
import 'package:injectable/injectable.dart';

@injectable
class CuisinesRouter extends AppinioRouter {
  void showCuisineDetails(CuisineModel cuisine) {
    router.push(CuisineRoute(cuisine: cuisine));
  }
}
