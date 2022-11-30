import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:travelportal/core/presentation/resources/size_constants.dart';
import 'package:travelportal/core/presentation/resources/ui_assets.dart';
import 'package:travelportal/core/presentation/widget/forms/buttons.dart';
import 'package:travelportal/core/presentation/widget/image_slider/image_slider.dart';

class RoomDetailPage extends StatelessWidget {
  const RoomDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          'Room Details',
          style: Theme.of(context).textTheme.headline6,
        ),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back_ios),
          color: Colors.black,
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding:
              const EdgeInsets.symmetric(horizontal: SC.lW, vertical: SC.mH),
          child: Column(
            children: [
              SizedBox(
                width: 400,
                height: 200,
                child: ImageSlider(
                  dotPosition: DotPosition.bottomCenter,
                  dotVerticalPadding: -15,
                  dotSize: 5,
                  images: [
                    Image.asset(
                      UIAssets.getDummyImage("banner1.png"),
                      width: double.infinity,
                      height: 0.5 * MediaQuery.of(context).size.height,
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      UIAssets.getDummyImage("hotel2.png"),
                      width: double.infinity,
                      height: 0.5 * MediaQuery.of(context).size.height,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: SC.lH,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Siper Delux Double Room',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  Text(
                    'Rs 1200',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                // ignore: prefer_const_literals_to_create_immutables

                children: [
                  SBC.xLH,
                  const Text(
                    'per night',
                  ),
                ],
              ),
              const SizedBox(
                height: SC.xLH,
              ),
              Row(
                children: [
                  Text(
                    'Details',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ],
              ),
              const SizedBox(
                height: SC.lH,
              ),
              Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Expanded(
                    child: Text(
                      "consectetur adipiscing elit duis tristique sollicitudin, nibh sit amet commodo nulla  facilisi nullam vehicula  ipsum  a arcu cursus vitae congue",
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: SC.xLH,
              ),
              Row(
                children: [
                  Text(
                    'Cancellation Policy',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ],
              ),
              const SizedBox(
                height: SC.lH,
              ),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      "Lorem ipsum in the good ol’ We are on the ground floor. Success feeds pride. Pride kills urgency. So  nothing fails like success. We always bring our best.  Nothing is more fun than serving God with people you love. We are spiritual contributors not spiritual consumers. We give up  things  love for things we love move. We are all about the capital C Church. We impress people with our strengths but we   with people through our weaknesses.",
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: SC.lH,
              ),
              PrimaryButton(
                onPressed: () {},
                title: 'BOOK THIS ROOM',
                radius: 5,
              )
            ],
          ),
        ),
      ),
    );
  }
}
