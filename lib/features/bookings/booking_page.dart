import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hive/hive.dart';
import 'package:travelportal/core/presentation/resources/ui_assets.dart';
import 'package:travelportal/core/presentation/widget/cached_network_image_builder.dart';
import 'package:travelportal/core/presentation/widget/forms/buttons.dart';
import 'package:travelportal/core/presentation/widget/forms/textfields.dart';

import '../../core/presentation/resources/size_constants.dart';
import '../detailPage/detail_page.dart';

class BookingPage extends StatelessWidget {
  const BookingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEDEDED),
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
                  children: const[
                    CustomCachedNetworkImage(
                      'https://c8.alamy.com/comp/D45XRY/hotel-yak-yeti-katmandu-nepal-asia-D45XRY.jpg',
                      fit: BoxFit.fill,
                      aspectRatio: 2.1,
                    ),
                     _HotelInfo(),
                  ],
                ),
              ),
              SBC.lH,
              const _GuestNumber(),
              SBC.lH,
              const _DetailsForm(),
              SBC.lH,
              const _ExtraInfo(),
              SBC.lH,
              const _PriceSummary(),
              SBC.lH,
              const _PaymentMethod(),
              SBC.lH,
              const TermsNCondition(),
              SBC.lH,
              PrimaryButton(onPressed: (){}, title: 'Confirm Booking'),
            ],
          ),
        ),
      ),
    );
  }
}

class _PaymentMethod extends StatelessWidget {
  const _PaymentMethod({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(vertical: SC.mH, horizontal: SC.mW),
        decoration: BoxDecoration(
          border: Border.all(
            width: 0.1,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Payments', style: Theme.of(context).textTheme.bodyText1,),
            SBC.lH,
            PrimaryTextField(
              onSaved: (_){},
              hintTxt: 'XXXX-XXXX-XXXX-XXXX',
            ),
            SBC.lH,
            PrimaryTextField(
              onSaved: (_){},
              hintTxt: 'MM/YY',
            ),
            SBC.lH,
            PrimaryTextField(
              onSaved: (_){},
              hintTxt: 'Card Holder Name',
            ),
            SBC.lH,
            PrimaryTextField(
              onSaved: (_){},
              hintTxt: 'CVV code',
            ),
            SBC.lH,
            PrimaryTextButton(title: 'Enter a Discount Coupon', onPressed: (){}, color: Colors.black,)


          ],
        )
    );
  }
}

class TermsNCondition extends StatelessWidget {
  const TermsNCondition({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Checkbox(value: false, onChanged: (_){}),
        Text('I accept the terms of use and privacy policy', style: Theme.of(context).textTheme.bodyText2,),
      ],
    );
  }
}

class _PriceSummary extends StatelessWidget {
  const _PriceSummary({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: SC.mH, horizontal: SC.mW),
      decoration: BoxDecoration(
        border: Border.all(
          width: 0.1,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Price Details', style: Theme.of(context).textTheme.bodyText1,),
          SBC.mH,
          const _PriceDetails(title: 'Price', amount: 'Rs 12999',),
          SBC.mH,
          const _PriceDetails(title: 'Service Charge', amount: 'Rs 200',),
          SBC.mH,
          const _PriceDetails(title: 'Car Rental', amount: 'Rs 150',),
          SBC.mH,
          const _PriceDetails(title: 'Discount', amount: 'Rs 900', color: Color(0xff00CB14),),
          SBC.mH,
          const Divider(),
          SBC.mH,
          const _PriceDetails(title: 'Total Price', amount: 'Rs 12099', fontSize: 16.0,),

        ],
      ),
    );
  }
}

class _PriceDetails extends StatelessWidget {
  final String title;
  final String amount;
  final Color? color;
  final double? fontSize;

  const _PriceDetails({
    required this.title,
    required this.amount,
    this.color,
    this.fontSize,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: Theme.of(context).textTheme.bodyText2!.copyWith(color: color, fontSize: fontSize),),
        Text(amount, style: Theme.of(context).textTheme.bodyText2!.copyWith(color: color, fontSize: fontSize),),
      ],
    );
  }
}

class _ExtraInfo extends StatelessWidget {
  const _ExtraInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: SC.mH, horizontal: SC.mW),
      decoration: BoxDecoration(
        border: Border.all(
          width: 0.1,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Extra Add-ons', style: Theme.of(context).textTheme.bodyText1,),
          SBC.lH,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Receiving', style: Theme.of(context).textTheme.bodyText2,),
              const _NumberOperator(),
            ],
          ),
          SBC.lH,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Car Booking', style: Theme.of(context).textTheme.bodyText2,),
              const _NumberOperator(),
            ],
          )
        ],
      ),
    );
  }
}

class _HotelInfo extends StatelessWidget {
  const _HotelInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
  }
}

class _GuestNumber extends StatelessWidget {
  const _GuestNumber({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: SC.mW, vertical: SC.mH),
      decoration: BoxDecoration(
        border: Border.all(
          width: 0.1,
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
                  width: 205,
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
