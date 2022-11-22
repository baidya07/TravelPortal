import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:travelportal/core/presentation/resources/ui_assets.dart';
import 'package:travelportal/core/presentation/widget/forms/buttons.dart';

import '../../core/presentation/resources/size_constants.dart';
import '../../core/presentation/widget/forms/textfields.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          actions: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              child: const Icon(
                                Icons.arrow_back_ios,
                                color: Colors.black,
                              ),
                            )),
                        const SizedBox(
                          width: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 90),
                          child: Text(
                            "Account Details",
                            style: Theme.of(context)
                                .textTheme
                                .bodyText2!
                                .copyWith(color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(5),
            child: Column(
              children: [
                Stack(
                  children: [
                    Positioned(
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 300),
                          child: CircleAvatar(
                            radius: 40,
                            backgroundImage: NetworkImage(
                              'https://thumbs.dreamstime.com/b/nice-to-talk-smart-person-indoor-shot-attractive-interesting-caucasian-guy-smiling-broadly-nice-to-112345489.jpg',
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 60,
                      left: 50,
                      width: 40,
                      height: 20,
                      child: Container(
                        width: 50,
                        height: 60,
                        child: CircleAvatar(
                          radius: 5,
                          child: Image(
                            image: AssetImage(
                              UIAssets.getDummyImage(
                                'icons3.png',
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SBC.xLH,
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      PrimaryTextField(
                        onSaved: (_) {},
                        label: 'Your e-mail',
                        hintTxt: 'jhon@gmail.com',
                      ),
                      SBC.xLH,
                      PrimaryTextField(
                        onSaved: (_) {},
                        label: 'Password',
                        hintTxt: "Please enter Your Password",
                        suffixIcon: const Icon(Icons.visibility_off),
                      ),
                      SBC.xLH,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SBC.xLH,
                          Text(
                            'Forgot Password ?',
                            style: Theme.of(context)
                                .textTheme
                                .caption!
                                .copyWith(color: Colors.blue),
                          )
                        ],
                      ),
                      SBC.xLH,
                      Row(
                        children: [
                          const Icon(Icons.check_box_outline_blank),
                          SBC.sW,
                          Text(
                            'Keep me logged in',
                            style: Theme.of(context).textTheme.caption,
                          )
                        ],
                      ),
                      SBC.xxLH,
                      PrimaryButton(
                        onPressed: (_) {},
                        title: 'Log in',
                        height: 50,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
