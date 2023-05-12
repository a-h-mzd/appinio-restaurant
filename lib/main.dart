import 'package:appinio_restaurant/common/injector/injector.dart';
import 'package:appinio_restaurant/presentation/app.dart';
import 'package:flutter/widgets.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  configureDependencies();

  runApp(
    App(
      router: inject(),
      localeProvider: inject(),
    ),
  );
}
