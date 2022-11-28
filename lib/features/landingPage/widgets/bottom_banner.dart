import 'package:flutter/material.dart';

import '../../../core/presentation/resources/size_constants.dart';
import '../../../core/presentation/resources/ui_assets.dart';
import '../../../core/presentation/widget/forms/buttons.dart';


class BottomBanner extends StatelessWidget {
  const BottomBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              width: 0.1,
            ),
          ),
          child: Image(
            image : AssetImage(UIAssets.getDummyImage('banner1.png',),),
          ),
        ),
        Positioned(
            left: SC.mW,
            top: SC.mH,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Festival Discount', style: Theme.of(context).textTheme.headline6!.copyWith(color: Colors.white),),
                Text('For all internation holiday flight and hotel booking', style: Theme.of(context).textTheme.caption!.copyWith(color: Colors.white),),
              ],)),
        Positioned(
            top: 100,
            left: 240,
            bottom: 10,
            child: PrimaryButton(title: "GRAB OFFER !!", onPressed: (){}, width: 100, color: const Color(0xff3731EB),)),
      ],
    );
  }
}