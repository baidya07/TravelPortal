import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travelportal/core/data/remote/dio_client.dart';
import 'package:travelportal/core/presentation/widget/cached_network_image_builder.dart';
import 'package:travelportal/core/presentation/widget/forms/buttons.dart';
import 'package:travelportal/core/presentation/widget/forms/textfields.dart';
import 'package:travelportal/features/landingPage/data/popularPlace_model.dart';

import '../../../core/presentation/resources/size_constants.dart';
import '../../../core/presentation/resources/ui_assets.dart';
//import '../../core/presentation/widget/image_slider/image_slider.dart';

class LandingPage extends StatelessWidget {
   final DioClient _client = DioClient();
   LandingPage({

    Key? key
  }) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: FutureBuilder<PopularPlaceModel?>(
          future: _client.getPost(id: '1'),
          builder: (context, snapshot){
            if(snapshot.hasData){
              print("data arrived in landing page");
              print(snapshot.data!.title);
              PopularPlaceModel? postInfo = snapshot.data;
              if(postInfo != null){
                print("postInfo");
                print(postInfo);
                 // PopularPlaces postData = postInfo.amount;
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Stack(children: [
                Image(
                  image: AssetImage(UIAssets.getDummyImage('bgimage.png')),
                ),
                AppBar(
                  elevation: 0,
                  backgroundColor: Colors.transparent,
                  centerTitle: true,
                  title: Text(
                    "Trip",
                    style: Theme.of(context)
                        .textTheme
                        .headline6!
                        .copyWith(color: Colors.white),
                  ),
                  leading: IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(UIAssets.getSvg('ham.svg')),
                  ),
                  actions: [
                    IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset(UIAssets.getSvg('notification.svg')),
                    ),
                  ],
                ),
                Positioned(
                  top: 200,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: SC.mW),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Rediscover Yourself',
                          style: Theme.of(context)
                              .textTheme
                              .headline5!
                              .copyWith(color: Colors.white),
                        ),
                        Text(
                          'Redisc self',
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1!
                              .copyWith(color: Colors.white),
                        ),
                        SizedBox(
                            width: MediaQuery.of(context).size.width / 1.09,
                            child: Opacity(
                              opacity: 0.9,
                              child: PrimaryTextField(
                                fillColor: const Color(0xffE5E5E5),
                                onSaved: (_) {},
                                hintTxt: 'Where to ?',
                                suffixIcon: Icon(Icons.search),
                              ),
                            ))
                      ],
                    ),
                  ),
                ),
              ]),
              Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: SC.mW, vertical: SC.mH),
                decoration: BoxDecoration(
                  border: Border.all(width: 0.1),
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      // color: const Color(0xffC0C0C0),
                      child: Row(
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
                    SBC.xxLH,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Best Vacation Destinations',
                          style: Theme.of(context).textTheme.headline6,
                        ),
                        Text(
                          'View all',
                          style: Theme.of(context)
                              .textTheme
                              .bodyText2!
                              .copyWith(color: const Color(0xffF46817)),
                        )
                      ],
                    ),
                    SBC.xxLH,

                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Stack(children: [
                              Container(
                                width: 150,
                                height: 100,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 0.1,
                                  ),
                                  image: const DecorationImage(
                                    fit: BoxFit.fill,
                                    image: NetworkImage(
                                      "https://img.atlasobscura.com/E4TAgOMK1AzcL75mAoDIqpKvskhyDGanjzoS6B9bglc/rs:fill:580:580:1/g:ce/q:81/sm:1/scp:1/ar:1/aHR0cHM6Ly9hdGxh/cy1kZXYuczMuYW1h/em9uYXdzLmNvbS91/cGxvYWRzL3BsYWNl/X2ltYWdlcy85Zjkw/MzEyMzEyOGQ4YTdi/ODZfSW5uWmEgMjAx/MyA1ODU1IHN0YWFu/ZC5qcGc.jpg",
                                    ),
                                  ),
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                              ),
                              Positioned(
                                left: 125,
                                child: SvgPicture.asset(
                                    UIAssets.getSvg('bookmark.svg')),
                                // Icon(Icons.bookmark_border_sharp,
                                //     color: Colors.white, size: 20),
                              ),
                            ]),
                            Text(
                              "data",
                              style: Theme.of(context).textTheme.bodyText1,
                            ),
                            SBC.sH,
                            Text(
                              "Iorem Ipsum",
                              style: Theme.of(context).textTheme.bodyText2,
                            ),
                          ],
                        ),
                      ]
                    ),
                    const Divider(
                      indent: 0.1,
                    ),
                    SBC.xxLH,
                    Text(
                      'Popular places near you',
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    SBC.xxLH,
                    ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: 3,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return const _PopularPlaces();
                      },
                    ),

                    SBC.lH,
                    PrimaryButton(
                      onPressed: (_) {},
                      title: 'Explore More',
                      color: const Color(0xff3731EB),
                    ),
                    SBC.xLH,
                    const _BottomBanner(),
                    SBC.xLH,
                    Text('Lorem Ipsum Dolor', style: Theme.of(context).textTheme.headline6,),
                  ],
                ),
              ),
            ],
          );
              }
            }
            return Center(child: CircularProgressIndicator());
          },
        ),
      ),
    );
  }
}

class _BottomBanner extends StatelessWidget {
  const _BottomBanner({
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
            border: Border.all(width: 0.1),
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

//@getRequest
// {
//       "image": "",
//       "title": "",
//       "description": ""
// }
