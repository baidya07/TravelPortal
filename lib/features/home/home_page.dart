import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/presentation/resources/size_constants.dart';
import '../../core/presentation/resources/ui_assets.dart';
import '../../core/presentation/routes/router.gr.dart';
import '../../core/presentation/widget/forms/buttons.dart';
import '../../core/presentation/widget/forms/textfields.dart';
import '../landingPage/presentation/landing_page.dart';
import '../landingPage/widgets/booking_service.dart';
import '../landingPage/widgets/bottom_banner.dart';
import '../landingPage/widgets/image_tile.dart';
import '../landingPage/widgets/popular_place.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 700,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
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
            Stack(
                children: [
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
                      BookingServices(
                        imageTitle: 'flight.svg',
                        title: 'Flight',
                      ),
                      BookingServices(
                        imageTitle: 'car.svg',
                        title: 'Transport',
                      ),
                      BookingServices(
                        imageTitle: 'hotel.svg',
                        title: 'Hotel',
                      ),
                      BookingServices(
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
