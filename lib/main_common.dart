/// Author:    Bibek Baidya
/// Created:   30.11.2022
/// Description:
/// (c) Copyright by supremeitsolutions.com.
///*/

import 'dart:io';

import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:travelportal/core/di/injection.dart';
import 'package:travelportal/core/presentation/resources/theme_data.dart';
import 'package:travelportal/core/presentation/routes/router.gr.dart';

Future<void> mainCommon() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(
      fileName: "assets/.env",
      mergeWith: Platform.environment); //dotenv.env['BASE_URL'];
  //Todo: await configureDependencies(); //init dependencies

  // await Firebase.initializeApp();

// changing system ui overflow color to transparent so that we can use our own custom color
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark));

  //disable Landscape mode
  await SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  //initializing hive
  await _initializeHive();
  getIt.registerSingleton<AppRouter>(AppRouter());
}

Future _initializeHive() async {
  final directory = await getApplicationDocumentsDirectory();
  Hive.init(directory.path);
  //opening small boxes to synchronously fetch some important values
  // await Hive.openBox(DbConstants.userProfileBox); // opening user information
}

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
// register AppSetting/Storage/Auth Provider/bloc

    final _appRouter = getIt<AppRouter>();
    return MaterialApp.router(
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        FormBuilderLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en'),
      ],
      theme: appTheme(),
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}
