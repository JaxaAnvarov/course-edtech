import 'package:course_ed_tech/core/imports/imporst.dart';
import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  MyContainer({Key? key, required this.thisTitle}) : super(key: key);

  String thisTitle;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      alignment: Alignment.center,
      width: getWidth(343.0),
      height: getHeight(80.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(getWidth(16.0)),
        border: Border.all(color: AppColors.borderColor, width: getWidth(1.0)),
      ),
      child: TitleTextWidget(title: thisTitle),
    );
  }
}
