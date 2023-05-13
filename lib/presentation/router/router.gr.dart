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
    InitRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const InitScreen(),
      );
    },
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
    DashboardRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const DashboardScreen(),
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
/// [InitScreen]
class InitRoute extends PageRouteInfo<void> {
  const InitRoute({List<PageRouteInfo>? children})
      : super(
          InitRoute.name,
          initialChildren: children,
        );

  static const String name = 'InitRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
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
