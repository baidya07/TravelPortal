import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:travelportal/core/presentation/routes/router.gr.dart';
import 'package:travelportal/core/presentation/widget/forms/buttons.dart';

import '../../core/presentation/resources/size_constants.dart';
import '../../core/presentation/resources/ui_assets.dart';
import '../../core/presentation/widget/forms/textfields.dart';

class AccountDetailPage extends StatelessWidget {
  const AccountDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'Account Detail',
          style: Theme.of(context).textTheme.headline6,
        ),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back_ios),
          color: Colors.black,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Text('Save',
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                        color: Colors.black,
                      )),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: SC.mW, vertical: SC.mH),
          child: Column(
            children: [
              Stack(
                children: [
                  const Positioned(
                    child: Padding(
                      padding: EdgeInsets.only(right: 300),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(
                          'https://thumbs.dreamstime.com/b/nice-to-talk-smart-person-indoor-shot-attractive-interesting-caucasian-guy-smiling-broadly-nice-to-112345489.jpg',
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 35,
                    left: 35,
                    child: Container(
                      width: 15,
                      height: 20,
                      child: CircleAvatar(
                        radius: 4,
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
                      label: 'Full Name',
                      hintTxt: 'jhon@gmail.com',
                    ),
                    SBC.xLH,
                    PrimaryTextField(
                      onSaved: (_) {},
                      label: 'Username',
                      hintTxt: "Please enter Your user name",
                    ),
                    SBC.xLH,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Location',
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1!
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SBC.xLH,
                    PrimaryTextField(
                      onSaved: (_) {},
                      label: 'Country',
                      hintTxt: 'jhon@gmail.com',
                    ),
                    SBC.xLH,
                    PrimaryTextField(
                      onSaved: (_) {},
                      label: 'Address',
                      hintTxt: 'Please Enter Your Valid Address',
                    ),
                    SBC.xLH,
                    PrimaryTextField(
                      onSaved: (_) {},
                      label: 'Zip Code',
                      hintTxt: 'Please Enter Your Zip Code ',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
