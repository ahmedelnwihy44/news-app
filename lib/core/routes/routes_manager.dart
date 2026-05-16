

import 'package:flutter/cupertino.dart';
import 'package:news/features/details_screen/details_screen.dart';
import 'package:news/features/home/home_screen.dart';
import 'package:news/features/home/search/search.dart';
import 'package:news/features/splash/splash_screen.dart';

class RoutesManager {
  static const String splash = "/splash";
  static const String home = "/home";
  static const String newsDetails = "/newsDetails";
  static const String search = "/search";

  static Map<String, WidgetBuilder> router =
  {
    splash: (context) => SplashScreen(),
    home: (context) => HomeScreen(),
    newsDetails: (context) => NewsDetailsScreen(),
    search: (context) => Search(),
  };
}
