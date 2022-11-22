import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:travelportal/core/presentation/routes/router.gr.dart';

import '../../core/presentation/resources/colors.dart';
import '../../core/presentation/widget/app_logo.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //TODO: check for authenticity

    Future.delayed(const Duration(milliseconds: 3000), () {
      context.router.push(const LoginRoute());
    }
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
            color: primaryColor,
            height: double.infinity,
            width: double.infinity,
            child: const Center(
              child: AppLogo(
                    aspectRatio: 5.5,
                ),
              ),
            ),
      ),
    );
  }
}