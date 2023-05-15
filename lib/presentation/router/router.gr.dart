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
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<CuisineRouteArgs>(
          orElse: () =>
              CuisineRouteArgs(cuisineId: pathParams.getString('id')));
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: WrappedRoute(
            child: CuisineScreen(
          key: args.key,
          cuisineId: args.cuisineId,
        )),
      );
    },
    ReservationRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<ReservationRouteArgs>(
          orElse: () =>
              ReservationRouteArgs(selectedDate: pathParams.getString('date')));
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
    required String cuisineId,
    List<PageRouteInfo>? children,
  }) : super(
          CuisineRoute.name,
          args: CuisineRouteArgs(
            key: key,
            cuisineId: cuisineId,
          ),
          rawPathParams: {'id': cuisineId},
          initialChildren: children,
        );

  static const String name = 'CuisineRoute';

  static const PageInfo<CuisineRouteArgs> page =
      PageInfo<CuisineRouteArgs>(name);
}

class CuisineRouteArgs {
  const CuisineRouteArgs({
    this.key,
    required this.cuisineId,
  });

  final Key? key;

  final String cuisineId;

  @override
  String toString() {
    return 'CuisineRouteArgs{key: $key, cuisineId: $cuisineId}';
  }
}

/// generated route for
/// [ReservationScreen]
class ReservationRoute extends PageRouteInfo<ReservationRouteArgs> {
  ReservationRoute({
    Key? key,
    required String selectedDate,
    List<PageRouteInfo>? children,
  }) : super(
          ReservationRoute.name,
          args: ReservationRouteArgs(
            key: key,
            selectedDate: selectedDate,
          ),
          rawPathParams: {'date': selectedDate},
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

  final String selectedDate;

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
