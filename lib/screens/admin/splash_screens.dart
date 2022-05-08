import 'dart:async';

import 'package:course_ed_tech/core/constants/images/app_images.dart';
import 'package:course_ed_tech/core/constants/size_config.dart';
import 'package:flutter/material.dart';
import 'package:course_ed_tech/core/imports/imporst.dart';

class SplashScreens extends StatefulWidget {
  const SplashScreens({Key? key}) : super(key: key);

  @override
  State<SplashScreens> createState() => _SplashScreensState();
}

class _SplashScreensState extends State<SplashScreens> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
      const Duration(seconds: 2),
      () async {
        Navigator.pushNamed(context, '/infopages');
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Center(
        child: Image.asset(AppImages.splashScreens),
      ),
    );
  }
}
