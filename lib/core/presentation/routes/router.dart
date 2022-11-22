
import 'package:auto_route/auto_route.dart';
import 'package:travelportal/features/detailPage/detail_page.dart';
import 'package:travelportal/features/landingPage/presentation/landing_page.dart';
import 'package:travelportal/features/listingPage/listing_page.dart';
import 'package:travelportal/features/splashPage/splash_page.dart';

import '../../../features/auth/logInPage/login_page.dart';
import '../../../features/bookings/booking_page.dart';
import '../../../features/login_page/secondarylogin_page.dart';
import '../../../features/saved/saved_page.dart';


import '../../../features/profile/profile_page.dart';
import '../../../features/setting_page/setting_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: SplashPage, initial: true),
    AutoRoute(page: LoginPage,),
    AutoRoute(page: SecondaryLoginPage,),
    AutoRoute(page: ProfilePage,),
    AutoRoute(page: LandingPage,),
    AutoRoute(page: SavedPage,),
    AutoRoute(page: BookingPage,),
    AutoRoute(page: DetailPage),
    AutoRoute(page: ListingPage),
    AutoRoute(page: SettingPage),
  ],
)
class $AppRouter {}