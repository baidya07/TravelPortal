import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/presentation/resources/colors.dart';
import '../../core/presentation/resources/size_constants.dart';
import '../../core/presentation/resources/ui_assets.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

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
                          color: const Color(0xffFFFFFF),
                          border: Border.all(
                            width: 0.1,
                          ),
                        ),
                        child: const Icon(Icons.arrow_back_ios, color: Color(0xff3731EB),),),
                    actions: [
                      IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset(UIAssets.getSvg('notification.svg'), width: 25,),
                      ),
                    ],
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
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: List.generate(5, (index) {
                              return const Icon(Icons.star, color: Color(0xffF46817), size: 15,);
                            } ),
                          ),
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
                          'https://res.cloudinary.com/wilderness-travel/image/upload/c_scale,dpr_auto,w_auto/f_auto,q_auto/v1/hotels/asia/nepal/yak-and-yeti-ktm/2-yak-yeti-kathmandu-nepal-bedroom-1',
                        ),
                      ),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                  SBC.mH,
                  Text('Location', style: Theme.of(context).textTheme.bodyText2!.copyWith(fontWeight: FontWeight.w600),),

                ],
              ),
            ),
          ],
        ),
      ),
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
        color: primaryColor,
      ),
    );
  }
}
