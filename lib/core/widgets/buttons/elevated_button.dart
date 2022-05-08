import 'package:flutter/material.dart';
import 'package:course_ed_tech/core/imports/imporst.dart';

class MyElevatedButton extends StatelessWidget {
  MyElevatedButton(
      {Key? key, required this.textOfButton, required this.onPress})
      : super(key: key);
  String textOfButton;
  VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return ElevatedButton(
      onPressed: onPress,
      child: Text(
        textOfButton,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: getWidth(16.0),
          fontWeight: FontWeight.w500,
          color: AppColors.whiteColor,
        ),
      ),
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(getWidth(16.0)),
        ),
        fixedSize: Size(getWidth(311.0), getHeight(57.0)),
        primary: AppColors.redColor,
      ),
    );
  }
}
