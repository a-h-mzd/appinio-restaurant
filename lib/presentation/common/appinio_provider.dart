import 'package:appinio_restaurant/presentation/router/router.dart';
import 'package:flutter/widgets.dart';
import 'package:injectable/injectable.dart';

abstract class AppinioProvider<T extends AppinioRouter> with ChangeNotifier {
  final T router;

  AppinioProvider({
    required this.router,
    @factoryParam required BuildContext context,
  }) {
    router.context = context;
  }
}
