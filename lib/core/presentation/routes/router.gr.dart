// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;

import '../../../features/detailPage/detail_page.dart' as _i2;
import '../../../features/landingPage/presentation/landing_page.dart' as _i1;
import '../../../features/listingPage/listing_page.dart' as _i3;

class AppRouter extends _i4.RootStackRouter {
  AppRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    LandingRoute.name: (routeData) {
      final args = routeData.argsAs<LandingRouteArgs>(
          orElse: () => const LandingRouteArgs());
      return _i4.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i1.LandingPage(key: args.key),
      );
    },
    DetailRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.DetailPage(),
      );
    },
    ListingRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.ListingPage(),
      );
    },
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(
          LandingRoute.name,
          path: '/',
        ),
        _i4.RouteConfig(
          DetailRoute.name,
          path: '/detail-page',
        ),
        _i4.RouteConfig(
          ListingRoute.name,
          path: '/listing-page',
        ),
      ];
}

/// generated route for
/// [_i1.LandingPage]
class LandingRoute extends _i4.PageRouteInfo<LandingRouteArgs> {
  LandingRoute({_i5.Key? key})
      : super(
          LandingRoute.name,
          path: '/',
          args: LandingRouteArgs(key: key),
        );

  static const String name = 'LandingRoute';
}

class LandingRouteArgs {
  const LandingRouteArgs({this.key});

  final _i5.Key? key;

  @override
  String toString() {
    return 'LandingRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i2.DetailPage]
class DetailRoute extends _i4.PageRouteInfo<void> {
  const DetailRoute()
      : super(
          DetailRoute.name,
          path: '/detail-page',
        );

  static const String name = 'DetailRoute';
}

/// generated route for
/// [_i3.ListingPage]
class ListingRoute extends _i4.PageRouteInfo<void> {
  const ListingRoute()
      : super(
          ListingRoute.name,
          path: '/listing-page',
        );

  static const String name = 'ListingRoute';
}
