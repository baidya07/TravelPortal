import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hive/hive.dart';
import 'package:travelportal/core/presentation/resources/ui_assets.dart';
import 'package:travelportal/core/presentation/widget/cached_network_image_builder.dart';
import 'package:travelportal/core/presentation/widget/forms/textfields.dart';

import '../../core/presentation/resources/size_constants.dart';
import '../detailPage/detail_page.dart';

class BookingPage extends StatelessWidget {
  const BookingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        title: Text('Booking Preferences',
            style: Theme.of(context)
                .textTheme
                .bodyText2!
                .copyWith(color: Colors.black)),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: SC.mW, vertical: SC.mH),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 0.1,
                  ),
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Column(
                  children: [
                    const CustomCachedNetworkImage(
                      'https://c8.alamy.com/comp/D45XRY/hotel-yak-yeti-katmandu-nepal-asia-D45XRY.jpg',
                      fit: BoxFit.fill,
                      aspectRatio: 2.1,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: SC.mW, vertical: SC.mH),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SBC.lH,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Hotel Yak & Yeti',
                                style: Theme.of(context).textTheme.bodyText1,
                              ),
                              SvgPicture.asset(
                                  UIAssets.getIcon('checked_icon.svg')),
                            ],
                          ),
                          SBC.lH,
                          Row(
                            children: [
                              const FiveStar(),
                              SBC.lW,
                              Text(
                                '(25)',
                                style: Theme.of(context).textTheme.caption,
                              )
                            ],
                          ),
                          SBC.mH,
                          const _RoomDetails(
                            title: '1 Room:',
                            details: ' Presidential suite, City View',
                          ),
                          const _RoomDetails(
                            title: 'Check-in:',
                            details: ' Sun, 4 Dec, 6:00',
                          ),
                          Row(
                            children: const [
                              _RoomDetails(
                                title: 'Check-out:',
                                details: ' Sun, 11 Dec, 6:00',
                              ),
                              SizedBox(
                                width: 0,
                              ),
                              Text('(7 Days)')
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SBC.lH,
              Container(
                padding: const EdgeInsets.symmetric(horizontal: SC.mW, vertical: SC.mH),
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 0.2,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SBC.xLH,
                    Text(
                      'No. of Guests',
                      style: Theme.of(context).textTheme.bodyText1!.copyWith(fontWeight: FontWeight.w600),
                    ),
                    SBC.xLH,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Rs 1200',
                              style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 18.0),
                            ),
                            Text(
                              'per Person',
                              style: Theme.of(context).textTheme.bodyText2,
                            ),
                          ],
                        ),
                        const _NumberOperator(),
                      ],
                    ),
                    SBC.lH,
                    Row(
                      children: [
                        Checkbox(value: false, onChanged: (_) {}),
                        Text(
                          'childrens',
                          style: Theme.of(context).textTheme.bodyText2,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SBC.lH,
              const _DetailsForm(),
              SBC.lH,
            ],
          ),
        ),
      ),
    );
  }
}

class _NumberOperator extends StatelessWidget {
  const _NumberOperator({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              width: 0.1,
            ),
            borderRadius: BorderRadius.circular(50.0),
          ),
          child: Icon(Icons.remove),
        ),
        SBC.mW,
        Text(
          '1',
          style: Theme.of(context).textTheme.bodyText2,
        ),
        SBC.mW,
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              width: 0.1,
            ),
            borderRadius: BorderRadius.circular(50.0),
          ),
          child: Icon(Icons.add),
        ),
      ],
    );
  }
}

class _DetailsForm extends StatelessWidget {
  const _DetailsForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: SC.mW, vertical: SC.mH),
      decoration: BoxDecoration(
        border: Border.all(
          width: 0.2,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Personal Details', style: Theme.of(context).textTheme.bodyText1,),
          SBC.lH,
          Text('Full Name', style: Theme.of(context).textTheme.bodyText1,),
          SBC.mH,
          PrimaryTextField(onSaved: (_){}, hintTxt: 'full name', ),
          SBC.mH,
          Text('Email Address', style: Theme.of(context).textTheme.bodyText1,),
          SBC.mH,
          PrimaryTextField(onSaved: (_){}, hintTxt: 'auto fill email from user account',),
          PrimaryTextField(onSaved: (_){}, hintTxt: 'confirm email address',),
          SBC.mH,
          Text('Nationality', style: Theme.of(context).textTheme.bodyText1,),
          SBC.mH,
          PrimaryTextField(onSaved: (_){}, hintTxt: 'select', suffixIcon: const Icon(Icons.keyboard_arrow_down_outlined),),
          Row(
            children: [
              Checkbox(value: false, onChanged: (_){}),
              SBC.lW,
              Text('i am 18 years old', style: Theme.of(context).textTheme.bodyText2,),
            ],
          ),
          SBC.lH,
          Text('Contact', style: Theme.of(context).textTheme.bodyText2,),
          SBC.lH,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 110,
                child: PrimaryTextField(
                    onSaved: (_){},
                    hintTxt: '+977',
                    suffixIcon: const Icon(Icons.keyboard_arrow_down_outlined),
                ),
              ),
              SizedBox(
                  width: 210,
                  child: PrimaryTextField(onSaved: (_){}, hintTxt: 'Mobile Number',)),
            ],
          )
        ],
      ),
    );
  }
}

class _RoomDetails extends StatelessWidget {
  final String title;
  final String details;

  const _RoomDetails({
    required this.title,
    required this.details,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(children: [
        TextSpan(
            text: title,
            style: Theme.of(context)
                .textTheme
                .bodyText1!
                .copyWith(fontWeight: FontWeight.bold)),
        TextSpan(
            text: details,
            style: Theme.of(context)
                .textTheme
                .bodyText2!
                .copyWith(color: Colors.black)),
      ]),
    );
  }
}
