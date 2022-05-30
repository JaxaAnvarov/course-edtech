import 'package:course_ed_tech/core/components/app_bar.dart';
import 'package:course_ed_tech/core/imports/imporst.dart';
import 'package:flutter/material.dart';

class SavedPage extends StatelessWidget {
  const SavedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: MyAppBar(thisTitle: "Saved"),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: getHeight(300.0),
              width: getWidth(300.0),
              child: Image.asset(AppImages.saved),
            ),
            TitleTextWidget(title: "Course was saved"),
            SubtitlesTextWidget(
              subtitle: "You can find this course in\nyour profile",
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
