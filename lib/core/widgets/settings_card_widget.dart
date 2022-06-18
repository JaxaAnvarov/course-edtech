import 'package:course_ed_tech/core/imports/imporst.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsCardWidget extends StatelessWidget {
  SettingsCardWidget({Key? key}) : super(key: key);

  bool _isActive = false;

  UpdateProvider? updateProvider;

  @override
  Widget build(BuildContext context) {
    updateProvider = Provider.of<UpdateProvider>(context);
    SizeConfig().init(context);
    return Container(
      width: getWidth(343.0),
      height: getHeight(82.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.0),
        border: Border.all(color: AppColors.borderColor, width: getWidth(1.0)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(AppIcons.notification),
          ),
          TitleTextWidget(title: "Notification"),
          Switch(
            value: _isActive,
            onChanged: (value) {
              _isActive = !_isActive;
              updateProvider!.updateProvider();
            },
          )
        ],
      ),
    );
  }
}
