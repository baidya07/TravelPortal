import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travelportal/core/presentation/resources/ui_assets.dart';
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
          centerTitle: true,
          title: Text(
            'Settings',
            style: Theme.of(context).textTheme.headline6,
          ),
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.arrow_back_ios),
            color: Colors.black,
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search),
              color: Colors.black,
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const SizedBox(
                height: SC.lH,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: SC.lH),
                child: Text(
                  'Account',
                ),
              ),
              const _AccountFeatures(),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: SC.lH),
                child: Text('Preferences'),
              ),
              const _perferencefeature(),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: SC.lH),
                child: Text('Others'),
              ),
              const _othersfeature(),
              const _Deletefeature(),
            ],
          ),
        ),
      ),
    );
  }
}

class _AccountFeatures extends StatelessWidget {
  const _AccountFeatures({
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
              const Divider(),
              const _settingFeatures(
                title: 'Change Primary Email',
                iconsImage: Icons.arrow_forward_ios,
              ),
              const Divider(),
              const _settingFeatures(
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
              const Divider(),
              const _settingFeatures(
                title: 'Region',
                iconsImage: Icons.arrow_forward_ios,
              ),
              const Divider(),
              const _settingFeatures(
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
              const Divider(),
              const _settingFeatures(
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

class _Deletefeature extends StatelessWidget {
  const _Deletefeature({
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
                title: 'Delete Account',
                iconsImage: null,
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
        const Icon(Icons.arrow_forward_ios),
      ],
    );
  }
}
