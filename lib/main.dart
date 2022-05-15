import 'package:course_ed_tech/core/widgets/buttons/bottom_navigation_bar.dart';
import 'package:course_ed_tech/provider/update_provider.dart';
import 'package:course_ed_tech/routes/app_routes.dart';
import 'package:course_ed_tech/screens/courses/course_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [

        ChangeNotifierProvider(
          create: (context) => UpdateProvider(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Course-EdTech',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      
      initialRoute: '/',
      onGenerateRoute: (RouteSettings routeSettings) {
        return AppRoutes.generateRoute(routeSettings);
      },
    );
  }
}
