
import 'package:auto_route/auto_route.dart';
import 'package:travelportal/features/detailPage/detail_page.dart';
import 'package:travelportal/features/landingPage/presentation/landing_page.dart';
import 'package:travelportal/features/listingPage/listing_page.dart';
import 'package:travelportal/features/splashPage/splash_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: SplashPage, initial: true),
    AutoRoute(page: LandingPage,),
    AutoRoute(page: DetailPage),
    AutoRoute(page: ListingPage),
  ],
)
class $AppRouter {}