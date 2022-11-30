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

import '../../../features/auth/logInPage/login_page.dart' as _i2;
import '../../../features/bookings/booking_page.dart' as _i10;
import '../../../features/detailPage/detail_page.dart' as _i4;
import '../../../features/home/home_page.dart' as _i8;
import '../../../features/landingPage/presentation/landing_page.dart' as _i7;
import '../../../features/listingPage/listing_page.dart' as _i5;
import '../../../features/login_page/secondarylogin_page.dart' as _i3;
import '../../../features/profile/profile_page.dart' as _i11;
import '../../../features/saved/saved_page.dart' as _i9;
import '../../../features/setting_page/setting_page.dart' as _i6;
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
    LoginRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.LoginPage(),
      );
    },
    SecondaryLoginRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.SecondaryLoginPage(),
      );
    },
    DetailRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.DetailPage(),
      );
    },
    ListingRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.ListingPage(),
      );
    },
    SettingRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i6.SettingPage(),
      );
    },
    LandingRoute.name: (routeData) {
      final args = routeData.argsAs<LandingRouteArgs>(
          orElse: () => const LandingRouteArgs());
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i7.LandingPage(key: args.key),
      );
    },
    HomeRouter.name: (routeData) {
      return _i12.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i8.HomePage(),
        transitionsBuilder: _i12.TransitionsBuilders.slideTop,
        opaque: true,
        barrierDismissible: false,
      );
    },
    SavedRouter.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i9.SavedPage(),
      );
    },
    BookingRouter.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i10.BookingPage(),
      );
    },
    ProfileRouter.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i11.ProfilePage(),
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
          LoginRoute.name,
          path: '/login-page',
        ),
        _i12.RouteConfig(
          SecondaryLoginRoute.name,
          path: '/secondary-login-page',
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
        _i12.RouteConfig(
          LandingRoute.name,
          path: 'landing',
          children: [
            _i12.RouteConfig(
              HomeRouter.name,
              path: '',
              parent: LandingRoute.name,
            ),
            _i12.RouteConfig(
              SavedRouter.name,
              path: 'saved',
              parent: LandingRoute.name,
            ),
            _i12.RouteConfig(
              BookingRouter.name,
              path: 'booking',
              parent: LandingRoute.name,
            ),
            _i12.RouteConfig(
              ProfileRouter.name,
              path: 'profile',
              parent: LandingRoute.name,
            ),
          ],
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
/// [_i2.LoginPage]
class LoginRoute extends _i12.PageRouteInfo<void> {
  const LoginRoute()
      : super(
          LoginRoute.name,
          path: '/login-page',
        );

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i3.SecondaryLoginPage]
class SecondaryLoginRoute extends _i12.PageRouteInfo<void> {
  const SecondaryLoginRoute()
      : super(
          SecondaryLoginRoute.name,
          path: '/secondary-login-page',
        );

  static const String name = 'SecondaryLoginRoute';
}

/// generated route for
/// [_i4.DetailPage]
class DetailRoute extends _i12.PageRouteInfo<void> {
  const DetailRoute()
      : super(
          DetailRoute.name,
          path: '/detail-page',
        );

  static const String name = 'DetailRoute';
}

/// generated route for
/// [_i5.ListingPage]
class ListingRoute extends _i12.PageRouteInfo<void> {
  const ListingRoute()
      : super(
          ListingRoute.name,
          path: '/listing-page',
        );

  static const String name = 'ListingRoute';
}

/// generated route for
/// [_i6.SettingPage]
class SettingRoute extends _i12.PageRouteInfo<void> {
  const SettingRoute()
      : super(
          SettingRoute.name,
          path: '/setting-page',
        );

  static const String name = 'SettingRoute';
}

/// generated route for
/// [_i7.LandingPage]
class LandingRoute extends _i12.PageRouteInfo<LandingRouteArgs> {
  LandingRoute({
    _i13.Key? key,
    List<_i12.PageRouteInfo>? children,
  }) : super(
          LandingRoute.name,
          path: 'landing',
          args: LandingRouteArgs(key: key),
          initialChildren: children,
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
/// [_i8.HomePage]
class HomeRouter extends _i12.PageRouteInfo<void> {
  const HomeRouter()
      : super(
          HomeRouter.name,
          path: '',
        );

  static const String name = 'HomeRouter';
}

/// generated route for
/// [_i9.SavedPage]
class SavedRouter extends _i12.PageRouteInfo<void> {
  const SavedRouter()
      : super(
          SavedRouter.name,
          path: 'saved',
        );

  static const String name = 'SavedRouter';
}

/// generated route for
/// [_i10.BookingPage]
class BookingRouter extends _i12.PageRouteInfo<void> {
  const BookingRouter()
      : super(
          BookingRouter.name,
          path: 'booking',
        );

  static const String name = 'BookingRouter';
}

/// generated route for
/// [_i11.ProfilePage]
class ProfileRouter extends _i12.PageRouteInfo<void> {
  const ProfileRouter()
      : super(
          ProfileRouter.name,
          path: 'profile',
        );

  static const String name = 'ProfileRouter';
}
