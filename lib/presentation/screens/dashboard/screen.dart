import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:appinio_restaurant/common/injector/injector.dart';
import 'package:appinio_restaurant/l10n/localization.dart';
import 'package:appinio_restaurant/presentation/helper/firebase_auth_helper.dart';
import 'package:appinio_restaurant/presentation/router/router.dart';
import 'package:appinio_restaurant/presentation/screens/dashboard/provider.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

@RoutePage()
class DashboardScreen extends StatelessWidget with AutoRouteWrapper {
  const DashboardScreen({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return ChangeNotifierProvider<DashboardProvider>(
      create: injectChangeNotifier,
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    final DashboardProvider provider = context.watch();
    final loginStatus = provider.loginStatus;

    final Widget body;
    switch (loginStatus) {
      case LoginStatus.loggingIn:
        body = Center(
          child: DefaultTextStyle.merge(
            style: const TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
            child: AnimatedTextKit(
              repeatForever: true,
              animatedTexts: [
                FadeAnimatedText(
                  context.localizations.loggingIn,
                  fadeInEnd: .15,
                  fadeOutBegin: .7,
                ),
                FadeAnimatedText(
                  context.localizations.pleaseWait,
                  fadeInEnd: .15,
                  fadeOutBegin: .7,
                ),
              ],
            ),
          ),
        );
      case LoginStatus.loggedOut:
        body = Center(
          child: ElevatedButton(
            onPressed: provider.login,
            child: Text(context.localizations.login),
          ),
        );
      case LoginStatus.loggedIn:
        body = AutoTabsRouter.pageView(
          routes: const [
            CuisinesRoute(),
            ReservationTimeRoute(),
          ],
          builder: (context, child, pageController) {
            return Column(
              children: [
                Expanded(child: child),
                AnimatedBuilder(
                  animation: pageController,
                  builder: (context, _) {
                    final page = pageController.page?.round() ??
                        pageController.initialPage;
                    return BottomNavigationBar(
                      currentIndex: page,
                      onTap: (page) => pageController.animateToPage(
                        page,
                        curve: Curves.easeOutCirc,
                        duration: const Duration(milliseconds: 350),
                      ),
                      items: [
                        BottomNavigationBarItem(
                          icon: const Icon(Icons.fastfood_outlined),
                          activeIcon: const Icon(Icons.fastfood),
                          label: context.localizations.cuisines,
                        ),
                        BottomNavigationBarItem(
                          icon: const Icon(Icons.table_bar_outlined),
                          activeIcon: const Icon(Icons.table_bar),
                          label: context.localizations.reserveTable,
                        ),
                      ],
                    );
                  },
                ),
              ],
            );
          },
        );
    }

    return Scaffold(body: body);
  }
}
