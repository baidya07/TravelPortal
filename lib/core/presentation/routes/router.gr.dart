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
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:flutter/material.dart' as _i8;

import '../../../features/auth/logInPage/login_page.dart' as _i2;
import '../../../features/detailPage/detail_page.dart' as _i5;
import '../../../features/landingPage/presentation/landing_page.dart' as _i4;
import '../../../features/listingPage/listing_page.dart' as _i6;
import '../../../features/profile/profile_page.dart' as _i3;
import '../../../features/splashPage/splash_page.dart' as _i1;

class AppRouter extends _i7.RootStackRouter {
  AppRouter([_i8.GlobalKey<_i8.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.SplashPage(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.LoginPage(),
      );
    },
    ProfileRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.ProfilePage(),
      );
    },
    LandingRoute.name: (routeData) {
      final args = routeData.argsAs<LandingRouteArgs>(
          orElse: () => const LandingRouteArgs());
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i4.LandingPage(key: args.key),
      );
    },
    DetailRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.DetailPage(),
      );
    },
    ListingRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i6.ListingPage(),
      );
    },
  };

  @override
  List<_i7.RouteConfig> get routes => [
        _i7.RouteConfig(
          SplashRoute.name,
          path: '/',
        ),
        _i7.RouteConfig(
          LoginRoute.name,
          path: '/login-page',
        ),
        _i7.RouteConfig(
          ProfileRoute.name,
          path: '/profile-page',
        ),
        _i7.RouteConfig(
          LandingRoute.name,
          path: '/landing-page',
        ),
        _i7.RouteConfig(
          DetailRoute.name,
          path: '/detail-page',
        ),
        _i7.RouteConfig(
          ListingRoute.name,
          path: '/listing-page',
        ),
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashRoute extends _i7.PageRouteInfo<void> {
  const SplashRoute()
      : super(
          SplashRoute.name,
          path: '/',
        );

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.LoginPage]
class LoginRoute extends _i7.PageRouteInfo<void> {
  const LoginRoute()
      : super(
          LoginRoute.name,
          path: '/login-page',
        );

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i3.ProfilePage]
class ProfileRoute extends _i7.PageRouteInfo<void> {
  const ProfileRoute()
      : super(
          ProfileRoute.name,
          path: '/profile-page',
        );

  static const String name = 'ProfileRoute';
}

/// generated route for
/// [_i4.LandingPage]
class LandingRoute extends _i7.PageRouteInfo<LandingRouteArgs> {
  LandingRoute({_i8.Key? key})
      : super(
          LandingRoute.name,
          path: '/landing-page',
          args: LandingRouteArgs(key: key),
        );

  static const String name = 'LandingRoute';
}

class LandingRouteArgs {
  const LandingRouteArgs({this.key});

  final _i8.Key? key;

  @override
  String toString() {
    return 'LandingRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i5.DetailPage]
class DetailRoute extends _i7.PageRouteInfo<void> {
  const DetailRoute()
      : super(
          DetailRoute.name,
          path: '/detail-page',
        );

  static const String name = 'DetailRoute';
}

/// generated route for
/// [_i6.ListingPage]
class ListingRoute extends _i7.PageRouteInfo<void> {
  const ListingRoute()
      : super(
          ListingRoute.name,
          path: '/listing-page',
        );

  static const String name = 'ListingRoute';
}
