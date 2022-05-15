import 'package:course_ed_tech/core/widgets/buttons/bottom_navigation_bar.dart';
import 'package:course_ed_tech/screens/admin/info_pages.dart';
import 'package:course_ed_tech/screens/admin/splash_screens.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static generateRoute(RouteSettings routeSettings) {
    var argements = routeSettings.arguments;
    switch (routeSettings.name) {
      case "/":
        return MaterialPageRoute(
          builder: (context) => const SplashScreens(),
        );
      case "/infoPages":
        return MaterialPageRoute(
          builder: (context) => InfoPages(),
        );
      case "/bottomNavigationBar":
        return MaterialPageRoute(
          builder: (context) => const
          MyBottomNavigationBar(),
        );
    }
  }
}
