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
import 'package:auto_route/auto_route.dart' as _i13;
import 'package:flutter/material.dart' as _i14;

import '../../../features/Account_Detail/account_detail._page.dart' as _i8;
import '../../../features/auth/logInPage/login_page.dart' as _i2;
import '../../../features/bookings/booking_page.dart' as _i7;
import '../../../features/detailPage/detail_page.dart' as _i9;
import '../../../features/landingPage/presentation/landing_page.dart' as _i5;
import '../../../features/listingPage/listing_page.dart' as _i10;
import '../../../features/login_page/secondarylogin_page.dart' as _i3;
import '../../../features/profile/profile_page.dart' as _i4;
import '../../../features/saved/saved_page.dart' as _i6;
import '../../../features/setting_page/setting_page.dart' as _i11;
import '../../../features/signup_page/signup_page.dart' as _i12;
import '../../../features/splashPage/splash_page.dart' as _i1;

class AppRouter extends _i13.RootStackRouter {
  AppRouter([_i14.GlobalKey<_i14.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i13.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.SplashPage(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.LoginPage(),
      );
    },
    SecondaryLoginRoute.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i3.SecondaryLoginPage(),
      );
    },
    ProfileRoute.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.ProfilePage(),
      );
    },
    LandingRoute.name: (routeData) {
      final args = routeData.argsAs<LandingRouteArgs>(
          orElse: () => const LandingRouteArgs());
      return _i13.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i5.LandingPage(key: args.key),
      );
    },
    SavedRoute.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i6.SavedPage(),
      );
    },
    BookingRoute.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i7.BookingPage(),
      );
    },
    AccountDetailRoute.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i8.AccountDetailPage(),
      );
    },
    DetailRoute.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i9.DetailPage(),
      );
    },
    ListingRoute.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i10.ListingPage(),
      );
    },
    SettingRoute.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i11.SettingPage(),
      );
    },
    SignupRoute.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i12.SignupPage(),
      );
    },
  };

  @override
  List<_i13.RouteConfig> get routes => [
        _i13.RouteConfig(
          SplashRoute.name,
          path: '/',
        ),
        _i13.RouteConfig(
          LoginRoute.name,
          path: '/login-page',
        ),
        _i13.RouteConfig(
          SecondaryLoginRoute.name,
          path: '/secondary-login-page',
        ),
        _i13.RouteConfig(
          ProfileRoute.name,
          path: '/profile-page',
        ),
        _i13.RouteConfig(
          LandingRoute.name,
          path: '/landing-page',
        ),
        _i13.RouteConfig(
          SavedRoute.name,
          path: '/saved-page',
        ),
        _i13.RouteConfig(
          BookingRoute.name,
          path: '/booking-page',
        ),
        _i13.RouteConfig(
          AccountDetailRoute.name,
          path: '/account-detail-page',
        ),
        _i13.RouteConfig(
          DetailRoute.name,
          path: '/detail-page',
        ),
        _i13.RouteConfig(
          ListingRoute.name,
          path: '/listing-page',
        ),
        _i13.RouteConfig(
          SettingRoute.name,
          path: '/setting-page',
        ),
        _i13.RouteConfig(
          SignupRoute.name,
          path: '/signup-page',
        ),
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashRoute extends _i13.PageRouteInfo<void> {
  const SplashRoute()
      : super(
          SplashRoute.name,
          path: '/',
        );

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.LoginPage]
class LoginRoute extends _i13.PageRouteInfo<void> {
  const LoginRoute()
      : super(
          LoginRoute.name,
          path: '/login-page',
        );

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i3.SecondaryLoginPage]
class SecondaryLoginRoute extends _i13.PageRouteInfo<void> {
  const SecondaryLoginRoute()
      : super(
          SecondaryLoginRoute.name,
          path: '/secondary-login-page',
        );

  static const String name = 'SecondaryLoginRoute';
}

/// generated route for
/// [_i4.ProfilePage]
class ProfileRoute extends _i13.PageRouteInfo<void> {
  const ProfileRoute()
      : super(
          ProfileRoute.name,
          path: '/profile-page',
        );

  static const String name = 'ProfileRoute';
}

/// generated route for
/// [_i5.LandingPage]
class LandingRoute extends _i13.PageRouteInfo<LandingRouteArgs> {
  LandingRoute({_i14.Key? key})
      : super(
          LandingRoute.name,
          path: '/landing-page',
          args: LandingRouteArgs(key: key),
        );

  static const String name = 'LandingRoute';
}

class LandingRouteArgs {
  const LandingRouteArgs({this.key});

  final _i14.Key? key;

  @override
  String toString() {
    return 'LandingRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i6.SavedPage]
class SavedRoute extends _i13.PageRouteInfo<void> {
  const SavedRoute()
      : super(
          SavedRoute.name,
          path: '/saved-page',
        );

  static const String name = 'SavedRoute';
}

/// generated route for
/// [_i7.BookingPage]
class BookingRoute extends _i13.PageRouteInfo<void> {
  const BookingRoute()
      : super(
          BookingRoute.name,
          path: '/booking-page',
        );

  static const String name = 'BookingRoute';
}

/// generated route for
/// [_i8.AccountDetailPage]
class AccountDetailRoute extends _i13.PageRouteInfo<void> {
  const AccountDetailRoute()
      : super(
          AccountDetailRoute.name,
          path: '/account-detail-page',
        );

  static const String name = 'AccountDetailRoute';
}

/// generated route for
/// [_i9.DetailPage]
class DetailRoute extends _i13.PageRouteInfo<void> {
  const DetailRoute()
      : super(
          DetailRoute.name,
          path: '/detail-page',
        );

  static const String name = 'DetailRoute';
}

/// generated route for
/// [_i10.ListingPage]
class ListingRoute extends _i13.PageRouteInfo<void> {
  const ListingRoute()
      : super(
          ListingRoute.name,
          path: '/listing-page',
        );

  static const String name = 'ListingRoute';
}

/// generated route for
/// [_i11.SettingPage]
class SettingRoute extends _i13.PageRouteInfo<void> {
  const SettingRoute()
      : super(
          SettingRoute.name,
          path: '/setting-page',
        );

  static const String name = 'SettingRoute';
}

/// generated route for
/// [_i12.SignupPage]
class SignupRoute extends _i13.PageRouteInfo<void> {
  const SignupRoute()
      : super(
          SignupRoute.name,
          path: '/signup-page',
        );

  static const String name = 'SignupRoute';
}
