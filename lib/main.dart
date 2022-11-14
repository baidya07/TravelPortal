import 'package:flutter/material.dart';
import 'package:travelportal/core/presentation/routes/router.gr.dart';

import 'features/landingPage/presentation/landing_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final _appRouter = AppRouter();


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
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

