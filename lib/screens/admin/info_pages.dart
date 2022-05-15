import 'package:course_ed_tech/screens/auth/log_in.dart';
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
      backgroundColor: AppColors.backgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: getHeight(300.0),
              width: getWidth(300.0),
              // color: Colors.cyanAccent,
              child: Image.asset('assets/images/image${_currentIndex + 1}.png'),
            ),
            SizedBox(height: getHeight(16.0)),
            TitleTextWidget(title: titles[_currentIndex]),
            SizedBox(height: getHeight(8.0)),
            SubtitlesTextWidget(subtitle: subtitles[_currentIndex]),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: getWidth(100.0), vertical: getHeight(30.0)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height:
                        _currentIndex == 0 ? getWidth(10.0) : getWidth(15.0),
                    width: _currentIndex == 0 ? getWidth(20.0) : getWidth(15.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(getWidth(10.0)),
                      color: _currentIndex == 0
                          ? AppColors.blueColor
                          : AppColors.passiveContainerColor,
                    ),
                  ),
                  Container(
                    height:
                        _currentIndex == 1 ? getWidth(10.0) : getWidth(15.0),
                    width: _currentIndex == 1 ? getWidth(20.0) : getWidth(15.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(getWidth(10.0)),
                      color: _currentIndex == 1
                          ? AppColors.blueColor
                          : AppColors.passiveContainerColor,
                    ),
                  ),
                  Container(
                    height:
                        _currentIndex == 2 ? getWidth(10.0) : getWidth(15.0),
                    width: _currentIndex == 2 ? getWidth(20.0) : getWidth(15.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(getWidth(10.0)),
                      color: _currentIndex == 2
                          ? AppColors.blueColor
                          : AppColors.passiveContainerColor,
                    ),
                  ),
                ],
              ),
            ),
            // SizedBox(height: getHeight(90.0)),
            MyElevatedButton(
              textOfButton: 'Next',
              onPress: () {
                _currentIndex != 2
                    ? _currentIndex += 1
                    : Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(
                            builder: (context) =>  LogInPage()),
                        (Route<dynamic> route) => false);
                setState(() {});
              },
            ),
          ],
        ),
      ),
    );
  }

  List<String> titles = [
    'Learn anytime\nand anywhere',
    'Find a course\nfor you',
    'Improve your\nskills'
  ];

  List<String> subtitles = [
    'Quarantine is the perfect time to spend your\nday learning something new, from anywhere!',
    'Quarantine is the perfect time to spend your\nday learning something new, from anywhere!',
    'Quarantine is the perfect time to spend your\nday learning something new, from anywhere!',
  ];
}
