import 'package:appinio_restaurant/l10n/localization.dart';
import 'package:appinio_restaurant/presentation/router/router.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter.pageView(
      routes: const [
        InitRoute(),
        InitRoute(),
      ],
      builder: (context, child, pageController) {
        return Column(
          children: [
            Expanded(child: child),
            AnimatedBuilder(
              animation: pageController,
              builder: (context, _) {
                final page =
                    pageController.page?.round() ?? pageController.initialPage;
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
}
