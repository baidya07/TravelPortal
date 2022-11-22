import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:travelportal/core/presentation/widget/forms/buttons.dart';

import '../../core/presentation/resources/size_constants.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

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
                            child: const Icon(
                              Icons.arrow_back_ios,
                              color: Colors.black,
                            )),
                        const SizedBox(
                          width: 20,
                        ),
                        Text(
                          "Settings",
                          textAlign: TextAlign.center,
                          style: Theme.of(context)
                              .textTheme
                              .bodyText2!
                              .copyWith(color: Colors.black),
                        ),
                      ],
                    ),
                    const Icon(
                      Icons.search_sharp,
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: SC.lH,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: SC.lH),
                child: Text(
                  'Account',
                ),
              ),
              _SubFeatures(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: SC.lH),
                child: Text('Preferences'),
              ),
              _perferencefeature(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: SC.lH),
                child: Text('Others'),
              ),
              _othersfeature(),
              SizedBox(
                height: 250,
              ),
              Center(
                child: PrimaryTextButton(
                  title: 'Sign Out',
                  color: Colors.black,
                  onPressed: (() {}),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _SubFeatures extends StatelessWidget {
  const _SubFeatures({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: SC.mW, vertical: SC.mH),
      margin: const EdgeInsets.symmetric(horizontal: SC.mW, vertical: SC.mH),
      decoration: BoxDecoration(
        border: Border.all(
          width: 0.1,
        ),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Column(
        children: [
          Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const _settingFeatures(
                title: 'Security',
                iconsImage: Icons.arrow_forward_ios,
              ),
              Divider(),
              _settingFeatures(
                title: 'Change Password',
                iconsImage: Icons.arrow_forward_ios,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _perferencefeature extends StatelessWidget {
  const _perferencefeature({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: SC.mW, vertical: SC.mH),
      margin: const EdgeInsets.symmetric(horizontal: SC.mW, vertical: SC.mH),
      decoration: BoxDecoration(
        border: Border.all(
          width: 0.1,
        ),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Column(
        children: [
          Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const _settingFeatures(
                title: 'Language',
                iconsImage: Icons.arrow_forward_ios,
              ),
              Divider(),
              _settingFeatures(
                title: 'Region',
                iconsImage: Icons.arrow_forward_ios,
              ),
              Divider(),
              _settingFeatures(
                title: 'Notification',
                iconsImage: Icons.arrow_forward_ios,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _othersfeature extends StatelessWidget {
  const _othersfeature({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: SC.mW, vertical: SC.mH),
      margin: const EdgeInsets.symmetric(horizontal: SC.mW, vertical: SC.mH),
      decoration: BoxDecoration(
        border: Border.all(
          width: 0.1,
        ),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Column(
        children: [
          Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const _settingFeatures(
                title: 'Report a Problem',
                iconsImage: Icons.arrow_forward_ios,
              ),
              Divider(),
              _settingFeatures(
                title: 'About',
                iconsImage: Icons.arrow_forward_ios,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _settingFeatures extends StatelessWidget {
  final String title;
  final iconsImage;
  const _settingFeatures({
    required this.title,
    required this.iconsImage,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title),
        Icon(Icons.arrow_forward_ios),
      ],
    );
  }
}
