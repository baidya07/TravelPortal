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
import 'package:auto_route/auto_route.dart' as _i12;
import 'package:flutter/material.dart' as _i13;

import '../../../features/auth/logInPage/login_page.dart' as _i5;
import '../../../features/bookings/booking_page.dart' as _i4;
import '../../../features/detailPage/detail_page.dart' as _i9;
import '../../../features/home/home_page.dart' as _i2;
import '../../../features/landingPage/presentation/landing_page.dart' as _i8;
import '../../../features/listingPage/listing_page.dart' as _i10;
import '../../../features/login_page/secondarylogin_page.dart' as _i6;
import '../../../features/profile/profile_page.dart' as _i7;
import '../../../features/saved/saved_page.dart' as _i3;
import '../../../features/setting_page/setting_page.dart' as _i11;
import '../../../features/splashPage/splash_page.dart' as _i1;

class AppRouter extends _i12.RootStackRouter {
  AppRouter([_i13.GlobalKey<_i13.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i12.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.SplashPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.HomePage(),
      );
    },
    SavedRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.SavedPage(),
      );
    },
    BookingRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.BookingPage(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.LoginPage(),
      );
    },
    SecondaryLoginRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i6.SecondaryLoginPage(),
      );
    },
    ProfileRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i7.ProfilePage(),
      );
    },
    LandingRoute.name: (routeData) {
      final args = routeData.argsAs<LandingRouteArgs>(
          orElse: () => const LandingRouteArgs());
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i8.LandingPage(key: args.key),
      );
    },
    DetailRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i9.DetailPage(),
      );
    },
    ListingRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i10.ListingPage(),
      );
    },
    SettingRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i11.SettingPage(),
      );
    },
  };

  @override
  List<_i12.RouteConfig> get routes => [
        _i12.RouteConfig(
          SplashRoute.name,
          path: '/',
        ),
        _i12.RouteConfig(
          HomeRoute.name,
          path: '/home-page',
        ),
        _i12.RouteConfig(
          SavedRoute.name,
          path: '/saved-page',
        ),
        _i12.RouteConfig(
          BookingRoute.name,
          path: '/booking-page',
        ),
        _i12.RouteConfig(
          LoginRoute.name,
          path: '/login-page',
        ),
        _i12.RouteConfig(
          SecondaryLoginRoute.name,
          path: '/secondary-login-page',
        ),
        _i12.RouteConfig(
          ProfileRoute.name,
          path: '/profile-page',
        ),
        _i12.RouteConfig(
          LandingRoute.name,
          path: '/landing-page',
        ),
        _i12.RouteConfig(
          SavedRoute.name,
          path: '/saved-page',
        ),
        _i12.RouteConfig(
          DetailRoute.name,
          path: '/detail-page',
        ),
        _i12.RouteConfig(
          ListingRoute.name,
          path: '/listing-page',
        ),
        _i12.RouteConfig(
          SettingRoute.name,
          path: '/setting-page',
        ),
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashRoute extends _i12.PageRouteInfo<void> {
  const SplashRoute()
      : super(
          SplashRoute.name,
          path: '/',
        );

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.HomePage]
class HomeRoute extends _i12.PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: '/home-page',
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i3.SavedPage]
class SavedRoute extends _i12.PageRouteInfo<void> {
  const SavedRoute()
      : super(
          SavedRoute.name,
          path: '/saved-page',
        );

  static const String name = 'SavedRoute';
}

/// generated route for
/// [_i4.BookingPage]
class BookingRoute extends _i12.PageRouteInfo<void> {
  const BookingRoute()
      : super(
          BookingRoute.name,
          path: '/booking-page',
        );

  static const String name = 'BookingRoute';
}

/// generated route for
/// [_i5.LoginPage]
class LoginRoute extends _i12.PageRouteInfo<void> {
  const LoginRoute()
      : super(
          LoginRoute.name,
          path: '/login-page',
        );

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i6.SecondaryLoginPage]
class SecondaryLoginRoute extends _i12.PageRouteInfo<void> {
  const SecondaryLoginRoute()
      : super(
          SecondaryLoginRoute.name,
          path: '/secondary-login-page',
        );

  static const String name = 'SecondaryLoginRoute';
}

/// generated route for
/// [_i7.ProfilePage]
class ProfileRoute extends _i12.PageRouteInfo<void> {
  const ProfileRoute()
      : super(
          ProfileRoute.name,
          path: '/profile-page',
        );

  static const String name = 'ProfileRoute';
}

/// generated route for
/// [_i8.LandingPage]
class LandingRoute extends _i12.PageRouteInfo<LandingRouteArgs> {
  LandingRoute({_i13.Key? key})
      : super(
          LandingRoute.name,
          path: '/landing-page',
          args: LandingRouteArgs(key: key),
        );

  static const String name = 'LandingRoute';
}

class LandingRouteArgs {
  const LandingRouteArgs({this.key});

  final _i13.Key? key;

  @override
  String toString() {
    return 'LandingRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i9.DetailPage]
class DetailRoute extends _i12.PageRouteInfo<void> {
  const DetailRoute()
      : super(
          DetailRoute.name,
          path: '/detail-page',
        );

  static const String name = 'DetailRoute';
}

/// generated route for
/// [_i10.ListingPage]
class ListingRoute extends _i12.PageRouteInfo<void> {
  const ListingRoute()
      : super(
          ListingRoute.name,
          path: '/listing-page',
        );

  static const String name = 'ListingRoute';
}

/// generated route for
/// [_i11.SettingPage]
class SettingRoute extends _i12.PageRouteInfo<void> {
  const SettingRoute()
      : super(
          SettingRoute.name,
          path: '/setting-page',
        );

  static const String name = 'SettingRoute';
}
