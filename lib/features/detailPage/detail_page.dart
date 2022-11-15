import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travelportal/core/presentation/widget/cached_network_image_builder.dart';
import 'package:travelportal/features/landingPage/presentation/landing_page.dart';

import '../../core/presentation/resources/colors.dart';
import '../../core/presentation/resources/size_constants.dart';
import '../../core/presentation/resources/ui_assets.dart';
import '../../core/presentation/widget/circular_avatar.dart';
import '../../core/presentation/widget/forms/buttons.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  final List subImage = const [
    'https://www.yakandyeti.com/templates/yootheme/cache/dynasty-image1-31baf870.jpeg',
    'https://www.yakandyeti.com/images/gallery/atrium.jpg',
    'https://ak-d.tripcdn.com/images/220c0z000000myirhFF6A_Z_1100_824_R5_Q70_D.jpg',
    'https://www.hotelscombined.com/himg/6a/ae/79/expediav2-149981-2775686049-789721.jpg',
    'https://res.cloudinary.com/wilderness-travel/image/upload/c_scale,dpr_auto,w_auto/f_auto,q_auto/v1/hotels/asia/nepal/yak-and-yeti-ktm/2-yak-yeti-kathmandu-nepal-bedroom-1'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Stack(
              children: [
                Image(
                  image: AssetImage(UIAssets.getDummyImage('hotel2.png')),
                ),
                Positioned(
                  child: AppBar(
                    elevation: 0,
                    backgroundColor: Colors.transparent,
                    leading: Container(
                        decoration: BoxDecoration(
                          color: const Color(0xffFFFFFF)!.withOpacity(0.5),
                          border: Border.all(
                            width: 0.1,
                          ),
                        ),
                        child: InkWell(
                            onTap: (){
                              context.router.pop();
                            },
                            child: const Icon(Icons.arrow_back_ios, color: Color(0xff3731EB))),),
                  ),
                ),
              ]
            ),
            SBC.mH,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: SC.mW, vertical: SC.mH),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text('Hotel Yak & Yeti', style: Theme.of(context).textTheme.bodyText2!.copyWith(fontWeight: FontWeight.w600),),
                          const FiveStar(),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                           const _CustomIconButton(icon: Icons.favorite_border_sharp,),
                           SBC.lW,
                           const _CustomIconButton(icon: Icons.share,),
                        ],
                      )
                    ],
                  ),
                  SBC.mH,
                  const Divider(
                    thickness: 2,
                  ),
                  Text('Description', style: Theme.of(context).textTheme.bodyText2!.copyWith(fontWeight: FontWeight.w600),),
                  SBC.mH,
                  Text('Amet minim mollit non deserunt ullamco est sit \n aliqua dolor do amet sint. Velit officia consequat \n duis enim velit mollit..see more', style: Theme.of(context).textTheme.bodyText2,),
                  SBC.mH,
                  Text('Gallery', style: Theme.of(context).textTheme.bodyText2!.copyWith(fontWeight: FontWeight.w600),),
                  SBC.mH,
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      // mainAxisSize: MainAxisSize.min,
                      children: List.generate(
                          subImage.length,
                              (index) => SizedBox(
                              height: 100,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: CircularAvatar(
                                  imageUrl: subImage[index],
                                  borderRadius: 10,
                                ),
                              ))),
                    ),
                  ),
                  Text('Location', style: Theme.of(context).textTheme.bodyText2!.copyWith(fontWeight: FontWeight.w600),),
                  SBC.mH,
                  const CustomCachedNetworkImage(
                      'https://www.google.com/maps/vt/data=utvkqKJ53YR_2aCBtXAPNeUilpboFjrrt7g4cPIPW7FKkL_rhFIV4BR1BpoNETygurKJgsXmZI2SuC2yDnU_wTYN3h1HY6xM4ti3SOASKrUM0xU8tGMIWJNWEU18wK6vPPtSSmijyZjc3uyhWx6xb7GX_1d0AoGDN-1ht-2vIcKfYVW30erglyS93iJ_bSf3ZxE',
                    aspectRatio: 2.1,
                  ),
                  SBC.mH,
                  Text('Amenities', style: Theme.of(context).textTheme.bodyText2!.copyWith(fontWeight: FontWeight.w600),),
                  SBC.mH,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const[
                       _hotelFacility(iconName: 'location.svg',),
                       _hotelFacility(iconName: 'flight.svg',),
                       _hotelFacility(iconName: 'icon1.svg',),
                    ],
                  ),
                  SBC.mH,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const[
                      _hotelFacility(iconName: 'icon2.svg',),
                      _hotelFacility(iconName: 'wifi.svg',),
                      _hotelFacility(iconName: 'icon3.svg',),
                    ],
                  ),
                  SBC.mH,
                  PrimaryTextButton(title: 'view all amenities', onPressed: (){}),
                  SBC.lH,
                  Text('What our guest say about us :', style: Theme.of(context).textTheme.bodyText2!.copyWith(fontWeight: FontWeight.w600),),
                  SBC.mH,
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: SC.mW, vertical: SC.mH),
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 0.2,
                      ),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                            'I had I was very sad this day.'
                                'There were \n friendly people at the bar that engaged with \n me. '
                                'Interactions with people was very well \n '
                                'needed. I enjoyed a great Long Island ice tea,\n '
                                'some tasty vegetarian nachos, \n'
                                'and sat by the water',
                          style: Theme.of(context).textTheme.bodyText2,
                            ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const SizedBox(
                              width: 50,
                              child: CircularAvatar(
                                borderRadius: 50,
                                imageUrl:
                                  'https://images.unsplash.com/photo-1539571696357-5a69c17a67c6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8cmFuZG9tJTIwcGVvcGxlfGVufDB8fDB8fA%3D%3D&w=1000&q=80',
                              ),
                            ),
                            Text('Robert', style: Theme.of(context).textTheme.bodyText2,),
                            const SizedBox(
                              height: 25,
                            ),
                            const FiveStar(),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SBC.xLH,
                  PrimaryOutlinedButton(
                    onPressed: (){},
                    title: 'View All 250 review',
                    color: Colors.black,
                  ),
                  SBC.mH,
                  const BottomBanner(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FiveStar extends StatelessWidget {
  const FiveStar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(5, (index) {
        return const Icon(Icons.star, color: Color(0xffF46817), size: 12,);
      } ),
    );
  }
}

class _hotelFacility extends StatelessWidget {
  final String iconName;
  const _hotelFacility({
    required this.iconName,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(UIAssets.getSvg(iconName), width: 20,),
        SBC.mW,
        Text('lorem ips', style: Theme.of(context).textTheme.bodyText2,)
      ],
    );
  }
}

class _CustomIconButton extends StatelessWidget {
  final IconData icon;
  const _CustomIconButton({
    required this.icon,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: SC.sW, vertical: SC.sH ),
      decoration: BoxDecoration(
        border: Border.all(
          width: 0.2,
        ),
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Icon(
        icon,
        color: secondaryColor,
      ),
    );
  }
}
