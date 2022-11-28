
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'forms/buttons.dart';



class ExitConfirmDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(3)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Are you sure you want to exit?',
              style: Theme.of(context)
                  .textTheme
                  .bodyText1
                  ?.apply(fontSizeDelta: 2, fontWeightDelta: 1),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Expanded(
                  child: PrimaryButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    title: 'CANCEL',
                    width: 150,
                    radius: 0,
                    color: Colors.grey,
                    height: 35,
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Expanded(
                  child: PrimaryButton(
                    onPressed: () async {
                      SystemChannels.platform.invokeMethod('SystemNavigator.pop');
                    },
                    title: 'EXIT',
                    width: 150,
                    radius: 0,
                    height: 35,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );

  }
}
