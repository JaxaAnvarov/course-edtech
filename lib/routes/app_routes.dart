import 'package:course_ed_tech/core/widgets/buttons/bottom_navigation_bar.dart';
import 'package:course_ed_tech/screens/admin/info_pages.dart';
import 'package:course_ed_tech/screens/admin/splash_screens.dart';
import 'package:course_ed_tech/screens/courses/view/courses_view_page.dart';
import 'package:course_ed_tech/screens/profile/view/payment.dart';
import 'package:course_ed_tech/screens/profile/view/saved.dart';
import 'package:course_ed_tech/screens/profile/view/your_courses.dart';
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
          builder: (context) => const MyBottomNavigationBar(),
        );
      case "/payment":
        return MaterialPageRoute(
          builder: (context) => const PaymentPage(),
        );
      case "/saved":
        return MaterialPageRoute(
          builder: (context) => const SavedPage(),
        );
      case "/yourCourses":
        return MaterialPageRoute(
          builder: (context) => const YourCoursesPage(),
        );
      case "/courseView":
        return MaterialPageRoute(
          builder: (context) => const CoursesViewPage(),
        );
    }
  }
}
