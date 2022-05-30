
import 'package:course_ed_tech/core/imports/imporst.dart';
import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget with PreferredSizeWidget{
   MyAppBar({Key? key,required this.thisTitle}) : super(key: key);
   String thisTitle;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return AppBar(
      automaticallyImplyLeading: false,
      leading: IconButton(
        icon: SvgPicture.asset(AppIcons.arrowBack),
        onPressed: (){
          Navigator.pop(context);
        },
      ),
      centerTitle: true,
      backgroundColor: AppColors.transparentColor,
      elevation: 0,
      title: TitleTextWidget(title: thisTitle),
    );
  }

  @override
  Size get preferredSize => Size(
    getWidth(375.0), getHeight(60.0)
  );
}
