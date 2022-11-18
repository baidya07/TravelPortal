import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:shimmer/shimmer.dart';
import 'package:travelportal/core/presentation/widget/forms/buttons.dart';
import 'package:travelportal/features/listingPage/provider/changeIcon_provider.dart';

import '../../core/presentation/resources/size_constants.dart';
import '../../core/presentation/resources/ui_assets.dart';
import '../../core/presentation/widget/cached_network_image_builder.dart';
import '../landingPage/presentation/landing_page.dart';

class ListingPage extends StatefulWidget {
  const ListingPage({Key? key}) : super(key: key);

  @override
  State<ListingPage> createState() => _ListingPageState();
}

class _ListingPageState extends State<ListingPage> {
  bool click = true;
  bool _enabled = true;
  @override
  Widget build(BuildContext context) {
    // final iconProvider = Provider.of<ChangeIconProvider>(context);
    //return ChangeNotifierProvider(
    //       create: (context) => ChangeIconProvider(),
    //       child: Scaffold(
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: InkWell(
            onTap: () {
              context.router.pop();
            },
            child: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            )),
        title: Text(
          'Tile here',
          style: Theme.of(context).textTheme.bodyText1,
        ),
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: SC.mW),
            child: Icon(
              Icons.search_rounded,
              color: Colors.black,
            ),
          ),
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset(
                    UIAssets.getIcon('sorticon.png'),
                    width: 16,
                  ),
                  SBC.mW,
                  Text(
                    'Sort',
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                ],
              ),
              Row(
                children: [
                  Image.asset(
                    UIAssets.getIcon('filterIcon.png'),
                    width: 20,
                  ),
                  SBC.mW,
                  Text(
                    'Filter',
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                ],
              ),
              // if(change != true)  Image.asset(
              //   UIAssets.getIcon('icon1.png'),
              //   width: 20,
              // ):
              InkWell(
                onTap: (){
                  // iconProvider.changeIcon;
                  setState(() {
                    click = !click;
                  });
                },
                child:
                // iconProvider.isChanged(true)
                    Image.asset(
                  UIAssets.getIcon((click == false) ?'icon1.png': 'icon2.png'),
                  width: 20,
                )
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
        padding: const EdgeInsets.symmetric(horizontal: SC.mW, vertical: SC.mH),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Destinations',
              style: Theme.of(context).textTheme.bodyText1,
            ),
            SBC.lH,
            ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: 5,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return (click == true)
                    ? const PopularPlaceGrid()
                    : const PopularPlaceList();
              },
            ),
            const BottomBanner(),
            SBC.xxLH,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Similar Destinations', style: Theme.of(context).textTheme.headline6,),
                PrimaryTextButton(title: 'View All', onPressed: (){}, color: const Color(0xffF46817),),
              ],
            ),
            SBC.xxLH,
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: List.generate(
                  // growable: true,
                    5, (index) {
                  return ImageTile(
                    imageUrl: "https://generatorfun.com/code/uploads/Random-Hotel-image-1.jpg",
                    bookmark: 'bookmark.svg',
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PopularPlaceGrid extends StatelessWidget {
  const PopularPlaceGrid({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: SC.mH),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SBC.mW,
          const SizedBox(
            height: 100,
            width: 99,
            child: CustomCachedNetworkImage(
              'https://www.ahstatic.com/photos/5451_ho_00_p_1024x768.jpg',
              fit: BoxFit.cover,
              aspectRatio: 2.1,
            ),
          ),
          SBC.mW,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const FeaturedWidget(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Harmony Boutique',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                  const SizedBox(
                    width: 80,
                  ),
                  Text(
                    '\$180.00',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(decoration: TextDecoration.lineThrough),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Hotel',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                  const SizedBox(
                    width: 138,
                  ),
                  Text(
                    '\$120.00',
                    style: Theme.of(context).textTheme.headline6,
                  )
                ],
              ),
              Text(
                'Lorem ipsum dolor sit amet',
                style: Theme.of(context).textTheme.caption,
              ),
            ],
          )
        ],
      ),
    );
  }
}

class FeaturedWidget extends StatelessWidget {
  const FeaturedWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 34,
      padding: const EdgeInsets.symmetric(horizontal: SC.mW, vertical: SC.mH),
      decoration: BoxDecoration(
        color: const Color(0xffF46817).withOpacity(0.10),
        border: Border.all(
          width: 0.1,
        ),
        borderRadius: BorderRadius.circular(18.0),
      ),
      child: Text(
        'Featured',
        style: Theme.of(context)
            .textTheme
            .bodyText2!
            .copyWith(color: const Color(0xffF46817)),
      ),
    );
  }
}
