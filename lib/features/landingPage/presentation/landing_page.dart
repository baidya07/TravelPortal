import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travelportal/core/presentation/routes/router.gr.dart';
import 'package:travelportal/core/presentation/widget/cached_network_image_builder.dart';
import 'package:travelportal/core/presentation/widget/forms/buttons.dart';
import 'package:travelportal/core/presentation/widget/forms/textfields.dart';


import '../../../core/presentation/resources/size_constants.dart';
import '../../../core/presentation/resources/ui_assets.dart';
import '../../../core/presentation/widget/bottom_navbar.dart';


class LandingPage extends StatelessWidget {
   // final DioClient _client = DioClient();
   LandingPage({Key? key}) : super(key: key);


//indicator bottom navigation [borderline top line wrapping with container]

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: FABBottomAppBar(
        backgroundColor: Colors.white,
        selectedColor: const Color(0xff3731EB),
        onTabSelected: (_) {
          context.router.push(ProfileRoute());
        },
        //     model.onNavItemClick(context, index),
        items: [
          FABBottomAppBarItem(icon: UIAssets.homeIcon, text: "Home"),
          FABBottomAppBarItem(icon: UIAssets.savedIcon, text: "Saved"),
          FABBottomAppBarItem(icon: UIAssets.bookingIcon, text: "Bookings"),
          FABBottomAppBarItem(icon: UIAssets.profileIcon, text: "Account", ),
        ],

      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
      // FutureBuilder<PopularPlaceModel?>(
      //   future: _client.getPost(id: '1'),
      //   builder: (context, snapshot){
      //     if(snapshot.hasData){
      //       print("data arrived in landing page");
      //       print(snapshot.data!.title);
      //       PopularPlaceModel? postInfo = snapshot.data;
      //       if(postInfo != null){
      //         print("postInfo");
      //         print(postInfo);
      //          // PopularPlaces postData = postInfo.amount;
      //   return
        //todo: use provider taking refernce to salesberry (category)
        child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Stack(children: [
                Image(
                  image: AssetImage(UIAssets.getDummyImage('bgimage.png')),
                ),
                Positioned(
                  // top: 30,
                  // left: 20,
                  child: AppBar(
                    elevation: 0,
                    backgroundColor: Colors.transparent,
                    centerTitle: true,
                    title: Text(
                      "Travel Portal",
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
                    // DotsIndicator(
                    //   onPageSelected: (_){},
                    //   dotSize: 3.0,
                    //     dotSpacing: 3.0,
                    //     color: const Color(0xffE5E5E5),
                    //     controller: PageController(
                    //       initialPage: 1,
                    //       keepPage: true,
                    //       viewportFraction: 1.0
                    //     ),
                    //     itemCount: 3
                    // ),
                    SBC.xxLH,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Best Vacation Destinations',
                          style: Theme.of(context).textTheme.headline6,
                        ),
                        PrimaryTextButton(title: 'View all',
                            color: const Color(0xffF46817),
                            onPressed: (){
                          context.router.navigate(const ListingRoute());
                        }),
                      ],
                    ),
                    SBC.xxLH,
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: List.generate(
                            // growable: true,
                            5, (index) {
                          return ImageTile(
                            imageUrl: "https://img.atlasobscura.com/E4TAgOMK1AzcL75mAoDIqpKvskhyDGanjzoS6B9bglc/rs:fill:580:580:1/g:ce/q:81/sm:1/scp:1/ar:1/aHR0cHM6Ly9hdGxh/cy1kZXYuczMuYW1h/em9uYXdzLmNvbS91/cGxvYWRzL3BsYWNl/X2ltYWdlcy85Zjkw/MzEyMzEyOGQ4YTdi/ODZfSW5uWmEgMjAx/MyA1ODU1IHN0YWFu/ZC5qcGc.jpg",
                            bookmark: 'bookmark.svg',
                          );
                        }),
                      ),
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
                        return const PopularPlaceList();
                      },
                    ),

                    SBC.lH,
                    PrimaryButton(
                      onPressed: (_) {},
                      title: 'Explore More',
                      color: const Color(0xff3731EB),
                    ),
                    SBC.xLH,
                    const BottomBanner(),
                    SBC.xLH,
                    Text('Lorem Ipsum Dolor', style: Theme.of(context).textTheme.headline6,),
                    SBC.xLH,
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: List.generate(
                          // growable: true,
                            5, (index) {
                          return ImageTile(imageUrl:'https://www.ahstatic.com/photos/5451_ho_00_p_1024x768.jpg');
                        }),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
  }
}

class ImageTile extends StatelessWidget {
  final String imageUrl;
  String? bookmark;
   ImageTile({
    required this.imageUrl,
    this.bookmark,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        context.router.push(const DetailRoute());
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: SC.mW),
        child: Row(
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
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage(
                        imageUrl,
                      ),
                    ),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
                Positioned(
                  left: 125,
                  child: SvgPicture.asset(
                      UIAssets.getSvg('$bookmark')),
                  // Icon(Icons.bookmark_border_sharp,
                  //     color: Colors.white, size: 20),
                ),
              ]),
              SBC.mH,
              Text(
                "Addison Garden",
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
      ),
    );
  }
}

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

