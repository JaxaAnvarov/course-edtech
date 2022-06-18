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
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: getHeight(300.0),
                width: getWidth(300.0),
                child: Image.asset(AppImages.settings),
              ),
              SettingsCardWidget(),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getWidth(20.0), vertical: getHeight(20.0)),
                child: Container(
                  alignment: Alignment.centerLeft,
                  width: double.infinity,
                  child: TitleTextWidget(title: "Account information"),
                ),
              ),
              Container(
                width: getWidth(343.0),
                height: getHeight(82.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.0),
                  border: Border.all(
                    color: AppColors.borderColor,
                    width: getWidth(1.0),
                  ),
                ),
                child: Row(
                  children: [
                    Container(
                      width: getWidth(50.0),
                      height: getHeight(82.0),
                      color: Colors.cyan,
                      child: IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset(AppIcons.profile),
                      ),
                    ),
                    Container(
                      height: getHeight(82.0),
                      width: getWidth(200.0),
                      color: Colors.cyan.shade300,
                      child: Column(
                        children: [
                          Container(

                            child: TitleTextWidget(title: "Name"),
                            color: Colors.yellow,
                            width: getWidth(150.0),
                            alignment: Alignment.centerLeft,
                          ),
                          Container(
                            a
                            width: getWidth(150.0),
                            color: Colors.redAccent,
                            child: SubtitlesTextWidget(
                              subtitle: "Juana Antonieta",
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: getHeight(15.0)),
              Container(
                width: getWidth(343.0),
                height: getHeight(82.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.0),
                  border: Border.all(
                      color: AppColors.borderColor, width: getWidth(1.0)),
                ),
              ),
              SizedBox(height: getHeight(15.0)),
              Container(
                width: getWidth(343.0),
                height: getHeight(82.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.0),
                  border: Border.all(
                      color: AppColors.borderColor, width: getWidth(1.0)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
