import 'package:flutter/material.dart';
import 'package:course_ed_tech/core/imports/imporst.dart';

class SubtitlesTextWidget extends StatelessWidget {
   SubtitlesTextWidget({ Key? key, required this.subtitle }) : super(key: key);

   String subtitle;

  @override
  Widget build(BuildContext context) {
    return Text(
      subtitle,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: AppColors.hingTextColor,
        fontSize: getWidth(14.0),
        fontWeight: FontWeight.w400,
      ),
    );
  }
}