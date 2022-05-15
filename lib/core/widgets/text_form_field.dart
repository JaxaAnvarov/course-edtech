import 'package:flutter/material.dart';
import 'package:course_ed_tech/core/imports/imporst.dart';
import 'package:flutter/services.dart';

class MyTextFormField extends StatelessWidget {
  MyTextFormField({
    Key? key,
    required this.onPress,
    required this.icon,
    this.obscureText,
    required this.thisControllers,
    this.hingText,
    this.onChanged,
    this.inputFormatters,
    this.validator,
    this.textInputType
  }) : super(key: key);

  TextEditingController thisControllers;
  String? hingText;
  bool? obscureText;
  VoidCallback onPress;
  Widget icon;
  List<TextInputFormatter>? inputFormatters;
  Function(String)? onChanged;
  FormFieldValidator<String>? validator;
  TextInputType? textInputType;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return TextFormField(
      keyboardType: textInputType,
      controller: thisControllers,
      onChanged: onChanged,
      inputFormatters: inputFormatters,
      validator: validator,
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
