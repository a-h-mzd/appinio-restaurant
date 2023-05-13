import 'package:appinio_restaurant/domain/cuisines/models/cuisine.dart';
import 'package:appinio_restaurant/presentation/common/appinio_provider.dart';
import 'package:appinio_restaurant/presentation/screens/cuisine/router.dart';
import 'package:injectable/injectable.dart';

@injectable
class CuisineProvider extends AppinioProvider<CuisineRouter> {
  final CuisineModel cuisine;

  CuisineProvider({
    required super.router,
    @factoryParam required super.context,
    @factoryParam required this.cuisine,
  });
}
