import 'package:flutter/material.dart';
import 'package:travelportal/core/presentation/routes/router.gr.dart';
import 'package:travelportal/features/landingPage/presentation/landing_page.dart';


import '../../core/presentation/resources/colors.dart';
import '../../core/presentation/widget/app_logo.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //TODO: check for authenticity

    // Future.delayed(const Duration(milliseconds: 2000), () {
    //   Navigator.push(
    //       context, MaterialPageRoute(builder: (context) =>  LandingRoute()));
    // }
    // );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
            color: primaryColor,
            height: double.infinity,
            width: double.infinity,
            child: Center(
              child: Builder(
                builder: (context) => Center(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LandingPage()));
                    },
                    child: const AppLogo(
                      aspectRatio: 7,
                    ),
                  ),
                ),
              ),
            )),
      ),
    );
  }
}