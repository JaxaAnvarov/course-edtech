
import 'package:course_ed_tech/core/imports/imporst.dart';
import 'package:flutter/material.dart';

class TitleTextWidget extends StatelessWidget {
   TitleTextWidget({ Key? key , required this.title}) : super(key: key);

   String title;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Text(
      title,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: getWidth(24.0),
        fontWeight: FontWeight.w500,
        color: AppColors.titleTextColor,
      ),
    );
  }
}