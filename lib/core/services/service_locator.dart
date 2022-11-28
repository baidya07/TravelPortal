import 'package:get_it/get_it.dart';

import 'app_setting.dart';

final locator = GetIt.instance;

void setup(){
  locator.registerSingleton<AppSettingModel>(AppSettingModel(locator()));
}