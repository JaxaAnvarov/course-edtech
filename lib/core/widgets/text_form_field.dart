import 'package:flutter/material.dart';
import 'package:course_ed_tech/core/imports/imporst.dart';

class MyTextFormField extends StatelessWidget {
  MyTextFormField({
    Key? key,
    required this.onPress,
    required this.icon,
    this.obscureText,
    required this.thisControllers,
    this.hingText,
  }) : super(key: key);

  TextEditingController thisControllers;
  String? hingText;
  bool? obscureText;
  VoidCallback onPress;
  Widget icon;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return TextFormField(
      controller: thisControllers,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
        hintText: hingText,
        hintStyle: TextStyle(
          fontSize: getHeight(14.0),
          fontWeight: FontWeight.w400,
          color: AppColors.hingTextColor,
        ),
        suffixIcon: IconButton(
          onPressed: onPress,
          icon: icon,
        ),
      ),
      obscureText: obscureText!,
    );
  }
}
