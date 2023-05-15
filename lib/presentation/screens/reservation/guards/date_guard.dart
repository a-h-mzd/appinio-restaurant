import 'dart:convert';

import 'package:appinio_restaurant/presentation/router/router.dart';
import 'package:appinio_restaurant/presentation/screens/reservation/screen.dart';
import 'package:auto_route/auto_route.dart';

class DateGuard extends AutoRouteGuard {
  void rejectNavigation(NavigationResolver resolver, StackRouter router) {
    resolver.next(false);
    if (!router.stack.map((e) => e.name).contains(ReservationTimeRoute.name)) {
      router.push(
        const DashboardRoute(
          children: [ReservationTimeRoute()],
        ),
      );
    }
  }

  static DateTime? parseDate(String rawDate) {
    try {
      final decodedDate = utf8.decode(base64.decode(rawDate));
      return DateTime.tryParse(decodedDate);
    } catch (e) {
      return null;
    }
  }

  static String encodeDate(DateTime date) {
    return base64.encode(utf8.encode(date.toString()));
  }

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    final rawDate = resolver.route.pathParams.get(ReservationScreen.dateKey);
    if (rawDate is! String) {
      return rejectNavigation(resolver, router);
    }

    final date = parseDate(rawDate);
    if (date == null) {
      return rejectNavigation(resolver, router);
    }

    resolver.next();
  }
}
