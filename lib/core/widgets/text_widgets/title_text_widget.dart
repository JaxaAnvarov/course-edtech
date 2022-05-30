
import 'package:course_ed_tech/core/imports/imporst.dart';
import 'package:flutter/material.dart';

class TitleTextWidget extends StatelessWidget {
   TitleTextWidget({ Key? key , required this.title, this.fontWeight = FontWeight.w500}) : super(key: key);

   String title;
   FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Text(
      title,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: getWidth(24.0),
        fontWeight: fontWeight,
        color: AppColors.titleTextColor,
      ),
    );
  }
}