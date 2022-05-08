import 'package:course_ed_tech/core/widgets/buttons/elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:course_ed_tech/core/imports/imporst.dart';

class InfoPages extends StatefulWidget {
  InfoPages({Key? key}) : super(key: key);

  @override
  State<InfoPages> createState() => _InfoPagesState();
}

class _InfoPagesState extends State<InfoPages> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: getHeight(300.0),
              width: getWidth(300.0),
              // color: Colors.cyanAccent,
              child: Image.asset('assets/images/image${_currentIndex + 1}.png'),
            ),
            MyElevatedButton(
              textOfButton: 'Next',
              onPress: () {
                _currentIndex != 2
                    ? _currentIndex += 1
                    : Navigator.pushNamed(context, 'settingPage');
                setState(() {});
              },
            ),
          ],
        ),
      ),
    );
  }

  List<String> titles = [
    'Learn anytime and anywhere',
    'Find a course for you',
    'Improve your skills'
  ];

  List<String> subtitles = [
    'Quarantine is the perfect time to spend your day learning something new, from anywhere!',
    'Quarantine is the perfect time to spend your day learning something new, from anywhere!',
    'Quarantine is the perfect time to spend your day learning something new, from anywhere!',
  ];
}
