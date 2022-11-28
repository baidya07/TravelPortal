import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';


import '../data/local_storage/cache_repository.dart';
import '../data/local_storage/db_constants.dart';
import 'base_viewmodel.dart';


/// this view model contains all the logic for intro, splash and app setting screen
@lazySingleton
class AppSettingModel extends BaseViewModel {
  CacheRepository dbRepository;
  AppSettingModel(this.dbRepository){
    openCacheBoxOnStartup();
  }

  /// already opening some box on statrtup to fetch value without using async functions
  void openCacheBoxOnStartup() {
    dbRepository.openBox(DbConstants.appSettingBox); //opening setting box on start-tup
    // dbRepository.openBox(DbConstants.homeDataBox); //opening setting box on start-tup
    dbRepository.openBox(DbConstants.userProfileBox); //opening userprofile box on start-tup

  }

  //set first time opened
  void setUserFirstTimeFalse(BuildContext context) {
    dbRepository.setIntroSettingPref(DbConstants.isFirstTime, false);
    // Navigator.pushNamedAndRemoveUntil(
    //     context,  LandingPage.route, (route) => false);
  }

  //check if user has opened app for the 1st time
  bool isFirstTime() {
    try {
      if(dbRepository.getIntroSettingPref(DbConstants.isFirstTime) == null){
        return true;
      }
      else if(dbRepository.getIntroSettingPref(DbConstants.isFirstTime) == false) {
        return false; //first time is set to true
      } else {
        return false; //first time is false
      }
    } catch (e) {
      return true; //
    }
  }


  // for bottom navigation bar
  int _lastSelectedNav = 0;
  int get lastSelectedNav => _lastSelectedNav;
  set lastSelectedNav(int value) {
    _lastSelectedNav = value;
    notifyListeners();
  }

  //for bottom nav bar item click
  Future<void> onNavItemClick(BuildContext context,int index) async {
    lastSelectedNav = index;
  }


  //method for splash screen to navigate specific screen
  // void navigateToScreenSplash(BuildContext context) {
  //   //using pushNamedAndRemovedUntil to prevent return back
  //   if (isFirstTime() == true) {
  //     Navigator.pushNamedAndRemoveUntil(context, AutoRoute.introRoute, (Route<dynamic> route) => false);
  //   } else {
  //     // this is the working one and need to change afterward.
  //     Navigator.pushNamedAndRemoveUntil(context,  LandingPage.route, (Route<dynamic> route) => false);
  //   }
  // }
}
