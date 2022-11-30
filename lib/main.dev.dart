/// Author:    Bibek Baidya
/// Created:   30.11.2022
/// Description:
/// (c) Copyright by supremeitsolutions.com.
///*/


import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

import 'main_common.dart';

Future<void> main() async {
  await mainCommon();

  runApp(DevicePreview(
    enabled: true,
    builder: (context) => const Application(),
  ));
}



