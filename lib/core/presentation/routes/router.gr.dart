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
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;

import '../../../features/detailPage/detail_page.dart' as _i3;
import '../../../features/landingPage/presentation/landing_page.dart' as _i2;
import '../../../features/listingPage/listing_page.dart' as _i4;
import '../../../features/splashPage/splash_page.dart' as _i1;

class AppRouter extends _i5.RootStackRouter {
  AppRouter([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.SplashPage(),
      );
    },
    LandingRoute.name: (routeData) {
      final args = routeData.argsAs<LandingRouteArgs>(
          orElse: () => const LandingRouteArgs());
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i2.LandingPage(key: args.key),
      );
    },
    DetailRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.DetailPage(),
      );
    },
    ListingRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.ListingPage(),
      );
    },
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(
          SplashRoute.name,
          path: '/',
        ),
        _i5.RouteConfig(
          LandingRoute.name,
          path: '/landing-page',
        ),
        _i5.RouteConfig(
          DetailRoute.name,
          path: '/detail-page',
        ),
        _i5.RouteConfig(
          ListingRoute.name,
          path: '/listing-page',
        ),
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashRoute extends _i5.PageRouteInfo<void> {
  const SplashRoute()
      : super(
          SplashRoute.name,
          path: '/',
        );

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.LandingPage]
class LandingRoute extends _i5.PageRouteInfo<LandingRouteArgs> {
  LandingRoute({_i6.Key? key})
      : super(
          LandingRoute.name,
          path: '/landing-page',
          args: LandingRouteArgs(key: key),
        );

  static const String name = 'LandingRoute';
}

class LandingRouteArgs {
  const LandingRouteArgs({this.key});

  final _i6.Key? key;

  @override
  String toString() {
    return 'LandingRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i3.DetailPage]
class DetailRoute extends _i5.PageRouteInfo<void> {
  const DetailRoute()
      : super(
          DetailRoute.name,
          path: '/detail-page',
        );

  static const String name = 'DetailRoute';
}

/// generated route for
/// [_i4.ListingPage]
class ListingRoute extends _i5.PageRouteInfo<void> {
  const ListingRoute()
      : super(
          ListingRoute.name,
          path: '/listing-page',
        );

  static const String name = 'ListingRoute';
}
