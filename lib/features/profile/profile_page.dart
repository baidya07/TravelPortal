import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travelportal/core/presentation/resources/colors.dart';
import 'package:travelportal/core/presentation/routes/router.gr.dart';
import 'package:travelportal/core/presentation/widget/cached_network_image_builder.dart';
import 'package:travelportal/core/presentation/widget/circular_avatar.dart';

import '../../core/presentation/resources/size_constants.dart';
import '../../core/presentation/resources/ui_assets.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Profile",
          style: Theme.of(context)
              .textTheme
              .headline6,
        ),
        leading: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(UIAssets.getSvg('ham.svg'), color: Colors.black,),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(UIAssets.getSvg('notification.svg'), color: Colors.black,),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: SC.mW, vertical: SC.mH),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SBC.xxLH,
              Row(
                children: [
                  Stack(
                      children: [
                    CircleAvatar(
                      backgroundColor: Colors.transparent,
                      child: Container(
                        width: 300,
                        decoration: BoxDecoration(
                          border: Border.all(width: 0.1),
                          borderRadius: BorderRadius.circular(100.0),
                          image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                              'https://www.looper.com/img/gallery/megan-foxs-big-regret-about-her-time-as-a-transformers-star/intro-1598364383.jpg',
                            ),
                          )
                        ),
                      ) ,
                    ),
                    Positioned(
                      top: 20,
                        left: 20,
                        child: Container(
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                            color: primaryColor,
                            border: Border.all(
                              width: 0.2,
                            ),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: IconButton(onPressed: (){}, icon: SvgPicture.asset(UIAssets.getSvg('edit_icon.svg'))))),
                  ]),
                  SBC.xXlW,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Jeniffer Lawrence', style: Theme.of(context).textTheme.bodyText1,),
                      Text('j.lawrence@gmail.com', style: Theme.of(context).textTheme.caption,),
                      Text('St. Beardwar, Gecco, Amsterdam', style: Theme.of(context).textTheme.caption,),
                    ],
                  ),

                ],
              ),
              const Divider(),
              SBC.mH,
              const _ProfileSettings(imageTitle: 'account.svg', title: 'Account Details',),
              SBC.xxLH,
              const _Heading(title: 'Features',),
              SBC.xxLH,
              const _ProfileSettings(imageTitle: 'settings_icon.svg', title: 'Deals & Offers',),
              SBC.xxLH,
              const _Heading(title: 'App Settings',),
              SBC.xxLH,
              InkWell(
                  onTap: (){
                    context.router.push(const SettingRoute());
                  },
                  child: const _ProfileSettings(imageTitle: 'settings_icon.svg', title: 'Settings',)),
              const _ProfileSettings(imageTitle: 'help_icon.svg', title: 'Help Center',),
              const _ProfileSettings(imageTitle: 'feedback_icon.svg', title: 'Feedback',),
              const _ProfileSettings(imageTitle: 'rate_icon.svg', title: 'Rate App',),
              SBC.xxLH,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: SC.mW, vertical: SC.mH),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap:(){
                        context.router.push(const SecondaryLoginRoute());
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SvgPicture.asset(UIAssets.getSvg('exit_icon.svg')),
                          SBC.xLW,
                          Text('Sign out', style: Theme.of(context).textTheme.bodyText2,),
                        ],
                      ),
                    ),
                    Text('lorem@gmail.com', style: Theme.of(context).textTheme.caption,)
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

class _ProfileSettings extends StatelessWidget {
  final String imageTitle;
  final String title;
  const _ProfileSettings({
    required this.imageTitle,
    required this.title,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: SC.mW, vertical: SC.mH),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SvgPicture.asset(UIAssets.getSvg(imageTitle)),
              SBC.xLW,
              Text(title, style: Theme.of(context).textTheme.bodyText2,),
            ],
          ),
          const Icon(Icons.arrow_forward_ios),


        ],
      ),
    );
  }
}

class _Heading extends StatelessWidget {
  final String title;
  const _Heading({
    required this.title,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(title, style: Theme.of(context).textTheme.bodyText1,);
  }
}
