// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    CuisineRoute.name: (routeData) {
      final args = routeData.argsAs<CuisineRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: WrappedRoute(
            child: CuisineScreen(
          key: args.key,
          cuisine: args.cuisine,
        )),
      );
    },
    ReservationRoute.name: (routeData) {
      final args = routeData.argsAs<ReservationRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: WrappedRoute(
            child: ReservationScreen(
          key: args.key,
          selectedDate: args.selectedDate,
        )),
      );
    },
    DashboardRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: WrappedRoute(child: const DashboardScreen()),
      );
    },
    ReservationTimeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: WrappedRoute(child: const ReservationTimeScreen()),
      );
    },
    CuisinesRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: WrappedRoute(child: const CuisinesScreen()),
      );
    },
  };
}

/// generated route for
/// [CuisineScreen]
class CuisineRoute extends PageRouteInfo<CuisineRouteArgs> {
  CuisineRoute({
    Key? key,
    required CuisineModel cuisine,
    List<PageRouteInfo>? children,
  }) : super(
          CuisineRoute.name,
          args: CuisineRouteArgs(
            key: key,
            cuisine: cuisine,
          ),
          initialChildren: children,
        );

  static const String name = 'CuisineRoute';

  static const PageInfo<CuisineRouteArgs> page =
      PageInfo<CuisineRouteArgs>(name);
}

class CuisineRouteArgs {
  const CuisineRouteArgs({
    this.key,
    required this.cuisine,
  });

  final Key? key;

  final CuisineModel cuisine;

  @override
  String toString() {
    return 'CuisineRouteArgs{key: $key, cuisine: $cuisine}';
  }
}

/// generated route for
/// [ReservationScreen]
class ReservationRoute extends PageRouteInfo<ReservationRouteArgs> {
  ReservationRoute({
    Key? key,
    required DateTime selectedDate,
    List<PageRouteInfo>? children,
  }) : super(
          ReservationRoute.name,
          args: ReservationRouteArgs(
            key: key,
            selectedDate: selectedDate,
          ),
          initialChildren: children,
        );

  static const String name = 'ReservationRoute';

  static const PageInfo<ReservationRouteArgs> page =
      PageInfo<ReservationRouteArgs>(name);
}

class ReservationRouteArgs {
  const ReservationRouteArgs({
    this.key,
    required this.selectedDate,
  });

  final Key? key;

  final DateTime selectedDate;

  @override
  String toString() {
    return 'ReservationRouteArgs{key: $key, selectedDate: $selectedDate}';
  }
}

/// generated route for
/// [DashboardScreen]
class DashboardRoute extends PageRouteInfo<void> {
  const DashboardRoute({List<PageRouteInfo>? children})
      : super(
          DashboardRoute.name,
          initialChildren: children,
        );

  static const String name = 'DashboardRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ReservationTimeScreen]
class ReservationTimeRoute extends PageRouteInfo<void> {
  const ReservationTimeRoute({List<PageRouteInfo>? children})
      : super(
          ReservationTimeRoute.name,
          initialChildren: children,
        );

  static const String name = 'ReservationTimeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [CuisinesScreen]
class CuisinesRoute extends PageRouteInfo<void> {
  const CuisinesRoute({List<PageRouteInfo>? children})
      : super(
          CuisinesRoute.name,
          initialChildren: children,
        );

  static const String name = 'CuisinesRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
