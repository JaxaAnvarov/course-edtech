import 'package:course_ed_tech/core/imports/imporst.dart';
import 'package:course_ed_tech/core/widgets/buttons/bottom_navigation_bar.dart';
import 'package:course_ed_tech/core/widgets/settings_card_widget.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: TitleTextWidget(title: "Settings"),
        centerTitle: true,
        backgroundColor: AppColors.transparentColor,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: getHeight(300.0),
              width: getWidth(300.0),
              child: Image.asset(AppImages.settings),
            ),
            SettingsCardWidget(
              leading: IconButton(
                icon: SvgPicture.asset(AppIcons.notification),
                onPressed: () {},
              ),
              title: TitleTextWidget(title: "Name"),
              subtitle: const SizedBox(),
              trailing: IconButton(
                icon: SvgPicture.asset(AppIcons.notification),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
