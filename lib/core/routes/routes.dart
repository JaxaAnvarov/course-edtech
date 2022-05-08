import 'package:course_ed_tech/screens/admin/info_pages.dart';
import 'package:course_ed_tech/screens/admin/splash_screens.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static generateRoute(RouteSettings routeSettings) {
    var arguments = routeSettings.arguments;
    switch (routeSettings.name) {
      case '/':
        return MaterialPageRoute(builder: (context) => SplashScreens());

      case '/infopages':
        return MaterialPageRoute(builder: (context) => InfoPages());
      case '/settingPage':
        return MaterialPageRoute(builder: (context) => InfoPages());
    }
  }
}
