import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:travelportal/core/presentation/routes/router.gr.dart';
import 'package:travelportal/core/presentation/widget/cached_network_image_builder.dart';
import 'package:travelportal/core/presentation/widget/forms/buttons.dart';

import '../../core/presentation/resources/size_constants.dart';

class SelectRoomPage extends StatelessWidget {
  const SelectRoomPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          backgroundColor: Colors.white,
          title: Text(
            'Select Room',
            style: Theme.of(context).textTheme.headline6,
          ),
          leading: IconButton(
            onPressed: () {
              context.router.pop();
            },
            icon: const Icon(Icons.arrow_back_ios),
            color: Colors.black,
          ),
        ),
        body: ListView.builder(
            itemCount: 3,
            itemBuilder: (context, position) {
              // ignore: prefer_const_constructors
              return InkWell(
                onTap: (){
                  context.router.push(const RoomDetailRoute());
                },
                child: const Card(
                  child: SelectRoomList(),
                ),
              );
            }));
  }
}

class SelectRoomList extends StatelessWidget {
  const SelectRoomList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: SC.sH,
      ),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
          Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    ' Delux Double Room',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                  const SizedBox(
                    width: 50,
                  ),
                  Text('Rs 1200', style: Theme.of(context).textTheme.headline6)
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.all(Radius.circular(15.0)),
                    ),
                    child: Text(
                      'Non-refundable',
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1!
                          .copyWith(color: Colors.black45),
                    ),
                  ),
                  const SizedBox(
                    width: 85,
                  ),
                  Text(
                    'per night',
                    style: Theme.of(context).textTheme.bodyText1,
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 180,
                  ),
                  PrimaryTextButton(
                    title: 'Detail >',
                    onPressed: (() {}),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
