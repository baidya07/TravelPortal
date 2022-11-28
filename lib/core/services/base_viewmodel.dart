import 'package:flutter/material.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';


/// This class will hold all the common attributes for our all used view models

class BaseViewModel extends ChangeNotifier{ //with RouteNavigationMixin (after change notifier)

  Future<bool> hasInternetConnection() async {
    //to check valid internet connection
    return InternetConnectionChecker().hasConnection;
  }


}
