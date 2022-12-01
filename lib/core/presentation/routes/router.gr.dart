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
import 'package:auto_route/auto_route.dart' as _i16;
import 'package:flutter/material.dart' as _i17;

import '../../../features/account_detail_page/account_detail._page.dart' as _i8;
import '../../../features/auth/logInPage/login_page.dart' as _i2;
import '../../../features/bookings/booking_page.dart' as _i14;
import '../../../features/detailPage/detail_page.dart' as _i4;
import '../../../features/home/home_page.dart' as _i12;
import '../../../features/landingPage/presentation/landing_page.dart' as _i11;
import '../../../features/listingPage/listing_page.dart' as _i5;
import '../../../features/login_page/secondarylogin_page.dart' as _i3;
import '../../../features/profile/profile_page.dart' as _i15;
import '../../../features/rooms/room_Detail_page.dart' as _i9;
import '../../../features/rooms/select_room_page.dart' as _i10;
import '../../../features/saved/saved_page.dart' as _i13;
import '../../../features/setting_page/setting_page.dart' as _i6;
import '../../../features/signup_page/signup_page.dart' as _i7;
import '../../../features/splashPage/splash_page.dart' as _i1;

class AppRouter extends _i16.RootStackRouter {
  AppRouter([_i17.GlobalKey<_i17.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i16.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.SplashPage(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.LoginPage(),
      );
    },
    SecondaryLoginRoute.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i3.SecondaryLoginPage(),
      );
    },
    DetailRoute.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.DetailPage(),
      );
    },
    ListingRoute.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.ListingPage(),
      );
    },
    SettingRoute.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i6.SettingPage(),
      );
    },
    SignupRoute.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i7.SignupPage(),
      );
    },
    AccountDetailRoute.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i8.AccountDetailPage(),
      );
    },
    RoomDetailRoute.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i9.RoomDetailPage(),
      );
    },
    SelectRoomRoute.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i10.SelectRoomPage(),
      );
    },
    LandingRoute.name: (routeData) {
      final args = routeData.argsAs<LandingRouteArgs>(
          orElse: () => const LandingRouteArgs());
      return _i16.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i11.LandingPage(key: args.key),
      );
    },
    HomeRouter.name: (routeData) {
      return _i16.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i12.HomePage(),
        transitionsBuilder: _i16.TransitionsBuilders.slideTop,
        opaque: true,
        barrierDismissible: false,
      );
    },
    SavedRouter.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i13.SavedPage(),
      );
    },
    BookingRouter.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i14.BookingPage(),
      );
    },
    ProfileRouter.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i15.ProfilePage(),
      );
    },
  };

  @override
  List<_i16.RouteConfig> get routes => [
        _i16.RouteConfig(
          SplashRoute.name,
          path: '/',
        ),
        _i16.RouteConfig(
          LoginRoute.name,
          path: '/login-page',
        ),
        _i16.RouteConfig(
          SecondaryLoginRoute.name,
          path: '/secondary-login-page',
        ),
        _i16.RouteConfig(
          DetailRoute.name,
          path: '/detail-page',
        ),
        _i16.RouteConfig(
          ListingRoute.name,
          path: '/listing-page',
        ),
        _i16.RouteConfig(
          SettingRoute.name,
          path: '/setting-page',
        ),
        _i16.RouteConfig(
          SignupRoute.name,
          path: '/signup-page',
        ),
        _i16.RouteConfig(
          AccountDetailRoute.name,
          path: '/account-detail-page',
        ),
        _i16.RouteConfig(
          RoomDetailRoute.name,
          path: '/room-detail-page',
        ),
        _i16.RouteConfig(
          SelectRoomRoute.name,
          path: '/select-room-page',
        ),
        _i16.RouteConfig(
          LandingRoute.name,
          path: 'landing',
          children: [
            _i16.RouteConfig(
              HomeRouter.name,
              path: '',
              parent: LandingRoute.name,
            ),
            _i16.RouteConfig(
              SavedRouter.name,
              path: 'saved',
              parent: LandingRoute.name,
            ),
            _i16.RouteConfig(
              BookingRouter.name,
              path: 'booking',
              parent: LandingRoute.name,
            ),
            _i16.RouteConfig(
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
class SplashRoute extends _i16.PageRouteInfo<void> {
  const SplashRoute()
      : super(
          SplashRoute.name,
          path: '/',
        );

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.LoginPage]
class LoginRoute extends _i16.PageRouteInfo<void> {
  const LoginRoute()
      : super(
          LoginRoute.name,
          path: '/login-page',
        );

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i3.SecondaryLoginPage]
class SecondaryLoginRoute extends _i16.PageRouteInfo<void> {
  const SecondaryLoginRoute()
      : super(
          SecondaryLoginRoute.name,
          path: '/secondary-login-page',
        );

  static const String name = 'SecondaryLoginRoute';
}

/// generated route for
/// [_i4.DetailPage]
class DetailRoute extends _i16.PageRouteInfo<void> {
  const DetailRoute()
      : super(
          DetailRoute.name,
          path: '/detail-page',
        );

  static const String name = 'DetailRoute';
}

/// generated route for
/// [_i5.ListingPage]
class ListingRoute extends _i16.PageRouteInfo<void> {
  const ListingRoute()
      : super(
          ListingRoute.name,
          path: '/listing-page',
        );

  static const String name = 'ListingRoute';
}

/// generated route for
/// [_i6.SettingPage]
class SettingRoute extends _i16.PageRouteInfo<void> {
  const SettingRoute()
      : super(
          SettingRoute.name,
          path: '/setting-page',
        );

  static const String name = 'SettingRoute';
}

/// generated route for
/// [_i7.SignupPage]
class SignupRoute extends _i16.PageRouteInfo<void> {
  const SignupRoute()
      : super(
          SignupRoute.name,
          path: '/signup-page',
        );

  static const String name = 'SignupRoute';
}

/// generated route for
/// [_i8.AccountDetailPage]
class AccountDetailRoute extends _i16.PageRouteInfo<void> {
  const AccountDetailRoute()
      : super(
          AccountDetailRoute.name,
          path: '/account-detail-page',
        );

  static const String name = 'AccountDetailRoute';
}

/// generated route for
/// [_i9.RoomDetailPage]
class RoomDetailRoute extends _i16.PageRouteInfo<void> {
  const RoomDetailRoute()
      : super(
          RoomDetailRoute.name,
          path: '/room-detail-page',
        );

  static const String name = 'RoomDetailRoute';
}

/// generated route for
/// [_i10.SelectRoomPage]
class SelectRoomRoute extends _i16.PageRouteInfo<void> {
  const SelectRoomRoute()
      : super(
          SelectRoomRoute.name,
          path: '/select-room-page',
        );

  static const String name = 'SelectRoomRoute';
}

/// generated route for
/// [_i11.LandingPage]
class LandingRoute extends _i16.PageRouteInfo<LandingRouteArgs> {
  LandingRoute({
    _i17.Key? key,
    List<_i16.PageRouteInfo>? children,
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

  final _i17.Key? key;

  @override
  String toString() {
    return 'LandingRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i12.HomePage]
class HomeRouter extends _i16.PageRouteInfo<void> {
  const HomeRouter()
      : super(
          HomeRouter.name,
          path: '',
        );

  static const String name = 'HomeRouter';
}

/// generated route for
/// [_i13.SavedPage]
class SavedRouter extends _i16.PageRouteInfo<void> {
  const SavedRouter()
      : super(
          SavedRouter.name,
          path: 'saved',
        );

  static const String name = 'SavedRouter';
}

/// generated route for
/// [_i14.BookingPage]
class BookingRouter extends _i16.PageRouteInfo<void> {
  const BookingRouter()
      : super(
          BookingRouter.name,
          path: 'booking',
        );

  static const String name = 'BookingRouter';
}

/// generated route for
/// [_i15.ProfilePage]
class ProfileRouter extends _i16.PageRouteInfo<void> {
  const ProfileRouter()
      : super(
          ProfileRouter.name,
          path: 'profile',
        );

  static const String name = 'ProfileRouter';
}
