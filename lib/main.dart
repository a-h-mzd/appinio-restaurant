import 'package:appinio_restaurant/common/injector/injector.dart';
import 'package:appinio_restaurant/firebase_options.dart';
import 'package:appinio_restaurant/presentation/app.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/widgets.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  configureDependencies();

  runApp(
    App(
      router: inject(),
      localeProvider: inject(),
    ),
  );
}
