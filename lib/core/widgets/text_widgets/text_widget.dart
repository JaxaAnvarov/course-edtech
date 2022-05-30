import 'package:flutter/material.dart';
import 'package:course_ed_tech/core/imports/imporst.dart';

class TextWidget extends StatelessWidget {
  TextWidget({
    Key? key,
    required this.text,
    this.fontSize = 14.0,
    this.textColor = const  Color(0xFF78746D),
  }) : super(key: key);

  String text;
  double fontSize;
  Color textColor;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: getWidth(fontSize),
        fontWeight: FontWeight.w500,
        color: textColor,
      ),
    );
  }
}
