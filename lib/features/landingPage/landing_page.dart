import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travelportal/core/presentation/widget/cached_network_image_builder.dart';
import 'package:travelportal/core/presentation/widget/forms/buttons.dart';

import '../../core/presentation/resources/size_constants.dart';
import '../../core/presentation/resources/ui_assets.dart';
import '../../core/presentation/widget/image_slider/image_slider.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(


      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        // actions: [Stack()],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: SC.mW, vertical: SC.mH),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: SC.mW, vertical: SC.mH),
                margin: const EdgeInsets.symmetric(
                    horizontal: SC.mW, vertical: SC.mH),
                decoration: BoxDecoration(
                  border: Border.all(width: 0.1),
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        _BookingServices(
                          imageTitle: 'flight.svg',
                          title: 'Flight',
                        ),
                        _BookingServices(
                          imageTitle: 'car.svg',
                          title: 'Transport',
                        ),
                        _BookingServices(
                          imageTitle: 'hotel.svg',
                          title: 'Hotel',
                        ),
                        _BookingServices(
                          imageTitle: 'events.svg',
                          title: 'Events',
                        )
                      ],
                    ),
                    //Icon(Icons.circle),
                    // ImageSlider(
                    //   dotPosition: DotPosition.bottomCenter,
                    //   dotVerticalPadding: -15,
                    //   dotSize: 5,
                    //   images: [
                    //
                    //   ],
                    // ),
                    SBC.lH,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Best Vacation Destinations', style: Theme.of(context).textTheme.bodyText1,),
                        Text('View all', style: Theme.of(context).textTheme.bodyText2!.copyWith(color: const Color(0xffF46817)),)
                      ],
                    ),
                    const Divider(
                      indent: 0.1,
                    ),
                    Text('Popular places near you', style: Theme.of(context).textTheme.bodyText1,),
                    ListView.builder(
                      itemCount: 3,
                      shrinkWrap: true,
                      itemBuilder: (context, index){
                      return _PopularPlaces();
                    },),

                    SBC.lH,
                    PrimaryButton(onPressed: (_){}, title: 'Explore More', color: const Color(0xff3731EB),),
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

class _PopularPlaces extends StatelessWidget {
  const _PopularPlaces({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              width: 0.1
            ),
          ),
          child: CustomCachedNetworkImage(
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
              padding: const EdgeInsets.symmetric(horizontal: SC.mW, vertical: SC.mH),
              decoration: BoxDecoration(
                border: Border.all(
                  width: 0.1,
                ),
                borderRadius: BorderRadius.circular(22.0),
              ),
              child: Text('Featured', style: Theme.of(context).textTheme.bodyText2!.copyWith(color: const Color(0xffF46817)),),
            ),
            Text('\$180.00', style: Theme.of(context).textTheme.caption!.copyWith(decoration: TextDecoration.lineThrough), ),
          ],
        ),
        SBC.sH,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Harmony Boutique Hotel', style: Theme.of(context).textTheme.bodyText1,),
            Text('\$120.00', style: Theme.of(context).textTheme.bodyText1,)
          ],
        ),
        Text('kjasd aijhdbiad aisdbajsbd', style: Theme.of(context).textTheme.bodyText2,),
        SBC.xxLH,
      ],
    );
  }
}

class _BookingServices extends StatelessWidget {
  final String imageTitle;
  final String title;

  const _BookingServices({
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
