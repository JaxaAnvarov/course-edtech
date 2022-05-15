import 'package:flutter/material.dart';
import 'package:course_ed_tech/core/imports/imporst.dart';

class TextWidget extends StatelessWidget {
   TextWidget({Key? key, required this.text}) : super(key: key);

   String text;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: getWidth(14.0),
        fontWeight: FontWeight.w500,
        color: AppColors.hingTextColor,
      ),
    );
  }
}
