import 'package:course_ed_tech/core/imports/imporst.dart';
import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return ClipRRect(
      borderRadius: BorderRadius.circular(getWidth(16.0)),
      child: Container(
        height: getHeight(300.0),
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(getWidth(16.0)),
          border: Border.all(color: AppColors.borderColor),
        ),
        child: Column(
          children: [
            Container(
              height: getHeight(194.0),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(getWidth(16.0)),
                  topLeft: Radius.circular(getWidth(16.0)),
                ),
                image: DecorationImage(
                  image: AssetImage(AppImages.cardImage),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              height: getHeight(103.0),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(getWidth(16.0)),
                  bottomLeft: Radius.circular(getWidth(16.0)),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: getWidth(12.0)),
                child: Column(
                  children: [
                    SizedBox(height: getHeight(8.0)),
                    Container(
                      child: TextWidget(
                          text: "3 h 30 min ", fontSize: getWidth(12.0)),
                      alignment: Alignment.centerLeft,
                    ),
                    SizedBox(height: getHeight(8.0)),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: TitleTextWidget(
                          title: "UI", fontWeight: FontWeight.w500),
                    ),
                    SizedBox(height: getHeight(8.0)),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: SubtitlesTextWidget(
                          subtitle: "Advanced mobile interface design",
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
