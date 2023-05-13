import 'package:appinio_restaurant/domain/cuisines/models/cuisine.dart';

sealed class HeroTagHelper {
  const HeroTagHelper._();

  static Object cuisineImage(CuisineModel cuisine) {
    return 'CuisineImage: ${cuisine.name}';
  }
}
