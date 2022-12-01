import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travelportal/core/presentation/widget/forms/buttons.dart';
import 'package:travelportal/core/presentation/widget/forms/textfields.dart';

import '../../../core/presentation/resources/size_constants.dart';
import '../../../core/presentation/resources/ui_assets.dart';


class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding:
              const EdgeInsets.symmetric(horizontal: SC.lW, vertical: SC.lH),
          margin:
              const EdgeInsets.symmetric(horizontal: SC.lW, vertical: SC.lH),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 70,
              ),
              Center(
                child: Container(
                  height: 70,
                  margin: const EdgeInsets.symmetric(
                      horizontal: SC.mW, vertical: SC.mH),
                  padding: const EdgeInsets.symmetric(
                      horizontal: SC.mW, vertical: SC.mH),
                  child: Image.asset(
                    UIAssets.getDummyImage('login_logo.png'),
                  ),
                ),
              ),
              SBC.mH,
              SBC.xLH,
              Text(
                'Your e-mail/number',
                style: Theme.of(context).textTheme.bodyText1,
              ),
              PrimaryTextField(
                onSaved: (_) {},
                hintTxt: "john@gmail.com",
              ),
              SBC.xLH,
              Text(
                'Password',
                style: Theme.of(context).textTheme.bodyText1,
              ),
              PrimaryTextField(
                onSaved: (_) {},
                hintTxt: 'please enter your password',
                suffixIcon: const Icon(Icons.visibility),
              ),
              SBC.xLH,
              Text(
                'Confirm Password',
                style: Theme.of(context).textTheme.bodyText1,
              ),
              PrimaryTextField(
                onSaved: (_) {},
                hintTxt: 'please re-enter your password',
                suffixIcon: const Icon(Icons.visibility),
              ),
              SBC.xxLH,
              PrimaryButton(
                onPressed: (_) {},
                title: 'Sign up',
              ),
              SBC.xxLH,
              Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'or Signin Using',
                      style: Theme.of(context).textTheme.caption,
                    ),
                    SBC.sH,
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SvgPicture.asset(UIAssets.getIcon('google_icon.svg')),
                        SBC.mW,
                        SvgPicture.asset(
                          UIAssets.getIcon('fb_icon.svg'),
                        ),
                      ],
                    ),
                    SBC.xLH,
                    Center(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'already registered? ',
                            style: Theme.of(context).textTheme.bodyText2,
                          ),
                          PrimaryTextButton(
                            title: 'sign in',
                            onPressed: () {},
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
