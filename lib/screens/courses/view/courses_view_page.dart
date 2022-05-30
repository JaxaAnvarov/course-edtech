import 'package:course_ed_tech/core/components/app_bar.dart';
import 'package:course_ed_tech/core/constants/size_config.dart';
import 'package:course_ed_tech/core/imports/imporst.dart';
import 'package:course_ed_tech/core/widgets/card_widget.dart';
import 'package:flutter/material.dart';

class CoursesViewPage extends StatelessWidget {
  const CoursesViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        thisTitle: "Your Courses",
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(
              vertical: getHeight(10.0),
              horizontal: getWidth(10.0)
            ),
            child: const  CardWidget()
          );
        },
      ),
    );
  }
}
