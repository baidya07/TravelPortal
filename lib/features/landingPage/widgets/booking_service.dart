import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/presentation/resources/size_constants.dart';
import '../../../core/presentation/resources/ui_assets.dart';


class BookingServices extends StatelessWidget {
  final String imageTitle;
  final String title;

  const BookingServices({
    required this.imageTitle,
    required this.title,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(UIAssets.getSvg(imageTitle)),
        SBC.sH,
        Text(
          title,
          style: Theme.of(context).textTheme.bodyText2,
        )
      ],
    );
  }
}