import 'package:flutter/material.dart';

import '../../../core/presentation/resources/size_constants.dart';
import '../../../core/presentation/widget/cached_network_image_builder.dart';

class PopularPlaceList extends StatelessWidget {
  const PopularPlaceList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: SC.sH, horizontal: SC.sW),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(width: 0.1),
            ),
            child: const CustomCachedNetworkImage(
              'https://www.ahstatic.com/photos/5451_ho_00_p_1024x768.jpg',
              fit: BoxFit.cover,
              aspectRatio: 2.1,
            ),
          ),
          SBC.mH,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: SC.mW, vertical: SC.mH),
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 0.1,
                  ),
                  borderRadius: BorderRadius.circular(22.0),
                ),
                child: Text(
                  'Featured',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText2!
                      .copyWith(color: const Color(0xffF46817)),
                ),
              ),
              Text(
                '\$180.00',
                style: Theme.of(context)
                    .textTheme
                    .caption!
                    .copyWith(decoration: TextDecoration.lineThrough),
              ),
            ],
          ),
          SBC.sH,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Harmony Boutique Hotel',
                style: Theme.of(context).textTheme.bodyText1,
              ),
              Text(
                '\$120.00',
                style: Theme.of(context).textTheme.bodyText1,
              )
            ],
          ),
          Text(
            'kjasd aijhdbiad aisdbajsbd',
            style: Theme.of(context).textTheme.bodyText2,
          ),
          SBC.xxLH,
        ],
      ),
    );
  }
}