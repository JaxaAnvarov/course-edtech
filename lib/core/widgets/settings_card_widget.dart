import 'package:course_ed_tech/core/imports/imporst.dart';
import 'package:flutter/material.dart';

class SettingsCardWidget extends StatelessWidget {
  SettingsCardWidget({
    Key? key,
    required this.leading,
    required this.title,
    required this.trailing,
    this.subtitle
  }) : super(key: key);

  Widget leading, title, trailing;
  Widget? subtitle;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      width: getWidth(343.0),
      height: getHeight(82.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.0),
        border: Border.all(color: AppColors.borderColor, width: getWidth(1.0)),
      ),
      child: ListTile(
        leading: leading,
        title: title,
        subtitle: subtitle,
        trailing: trailing,
      ),
    );
  }
}
