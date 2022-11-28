import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:travelportal/core/presentation/routes/router.gr.dart';

import 'core/services/service_locator.dart';
import 'features/landingPage/presentation/landing_page.dart';

void main() {
  // setup();
  runApp(
      DevicePreview(
        enabled: !kReleaseMode,
        builder: (context) => MyApp(),
      ),
  );
}

class MyApp extends StatelessWidget {
  final _appRouter = AppRouter();


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      useInheritedMediaQuery: true,
      builder: DevicePreview.appBuilder,
      locale: DevicePreview.locale(context),
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
      debugShowCheckedModeBanner: false,
      title: 'Travel Portal',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}

