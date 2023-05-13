import 'package:appinio_restaurant/domain/cuisines/models/cuisine.dart';
import 'package:appinio_restaurant/presentation/screens/cuisine/screen.dart';
import 'package:appinio_restaurant/presentation/screens/cuisines/screen.dart';
import 'package:appinio_restaurant/presentation/screens/dashboard/screen.dart';
import 'package:appinio_restaurant/presentation/screens/reservation/screen.dart';
import 'package:appinio_restaurant/presentation/screens/reservation_time/screen.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/widgets.dart';
import 'package:injectable/injectable.dart';

part 'appinio_router.dart';
part 'router.gr.dart';

@singleton
@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  AppRouter();

  @override
  RouteType get defaultRouteType => const RouteType.cupertino();

  @override
  final routes = <AutoRoute>[
    AutoRoute(
      page: DashboardRoute.page,
      path: '/',
      children: [
        AutoRoute(page: CuisinesRoute.page),
        AutoRoute(page: ReservationTimeRoute.page),
      ],
    ),
    AutoRoute(page: CuisineRoute.page),
    AutoRoute(page: ReservationRoute.page),
  ];
}
