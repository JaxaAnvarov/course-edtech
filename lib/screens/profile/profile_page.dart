import 'package:course_ed_tech/core/imports/imporst.dart';
import 'package:course_ed_tech/core/widgets/container_widget.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: TitleTextWidget(title: "Profile"),
        centerTitle: true,
        backgroundColor: AppColors.transparentColor,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              height: getWidth(200.0),
              width: getWidth(200.0),
              child: Image.asset(AppImages.avatar),
            ),
            GestureDetector(
              child: MyContainer(thisTitle: "Your Courses"),
              onTap: () {
                Navigator.pushNamed(context, "/yourCourses");
              },
            ),
            GestureDetector(
              child: MyContainer(thisTitle: "Saved"),
              onTap: () {
                Navigator.pushNamed(context, "/saved");
              },
            ),
            GestureDetector(
              child: MyContainer(thisTitle: "Payment"),
              onTap: () {
                Navigator.pushNamed(context, "/payment");
              },
            ),
            GestureDetector(
              child: Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: getHeight(60.0),
                child: TextWidget(text: "Log Out"),
              ),
              onTap: () {
                Navigator.pushNamed(context, "/");
              },
            )
          ],
        ),
      ),
    );
  }
}
