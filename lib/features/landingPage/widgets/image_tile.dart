import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/presentation/resources/size_constants.dart';
import '../../../core/presentation/resources/ui_assets.dart';
import '../../../core/presentation/routes/router.gr.dart';

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