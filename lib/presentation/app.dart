import 'package:appinio_restaurant/common/flutter_gen/fonts.gen.dart';
import 'package:appinio_restaurant/l10n/localization.dart';
import 'package:appinio_restaurant/presentation/router/router.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class App extends StatelessWidget {
  final AppRouter router;
  final LocaleProvider localeProvider;

  const App({
    required this.router,
    required this.localeProvider,
  });

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: localeProvider,
      child: AppinioRestaurantApp(router: router),
    );
  }
}

class AppinioRestaurantApp extends StatelessWidget {
  final AppRouter router;

  const AppinioRestaurantApp({
    required this.router,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Appinio Restaurant',
      theme: ThemeData(
        fontFamily: FontFamily.sFProRounded,
        useMaterial3: true,
      ),
      routerConfig: router.config(),
      locale: context.watch<LocaleProvider>().locale,
      supportedLocales: AppLocalizations.supportedLocales,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      debugShowCheckedModeBanner: false,
    );
  }
}
