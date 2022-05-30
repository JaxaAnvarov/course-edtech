import 'package:course_ed_tech/core/components/app_bar.dart';
import 'package:course_ed_tech/core/imports/imporst.dart';
import 'package:flutter/material.dart';

class YourCoursesPage extends StatelessWidget {
  const YourCoursesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: MyAppBar(thisTitle: "Your Courses"),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: getHeight(300.0),
              width: getWidth(300.0),
              child: Image.asset(AppImages.yourCourses),
            ),
            TitleTextWidget(title: "Course not found"),
            SubtitlesTextWidget(
              subtitle: "Try searching the course with\na different keyword",
              fontWeight: FontWeight.w400,
            ),
            MyElevatedButton(
              textOfButton: "Continue",
              onPress: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
