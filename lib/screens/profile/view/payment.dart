import 'package:course_ed_tech/core/components/app_bar.dart';
import 'package:course_ed_tech/core/imports/imporst.dart';
import 'package:flutter/material.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: MyAppBar(thisTitle: "Payment"),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: getHeight(300.0),
              width: getWidth(300.0),
              child: Image.asset(AppImages.payment),
            ),
            TitleTextWidget(title: "No payment method"),
            SubtitlesTextWidget(
              subtitle: "You don’t have any\npayment method",
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
