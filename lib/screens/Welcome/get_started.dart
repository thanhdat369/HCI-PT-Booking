import 'package:flutter/material.dart';
import 'package:hci_booking_pt/components/brand_label.dart';
import 'package:hci_booking_pt/components/rounded_button.dart';
import 'package:hci_booking_pt/components/screen_with_background.dart';
import 'package:hci_booking_pt/theme/colors.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MainColors.kDark,
      body: ScreenWithBackground(
        pathBackground: "asset/images/background/1.jpg",
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            BrandLabel(),
            Container(
              margin: EdgeInsets.symmetric(vertical: 50),
              child: Text("WHO ARE YOU?",
                  style: const TextStyle(
                      color: const Color(0xffffffff),
                      fontWeight: FontWeight.w400,
                      fontFamily: "ProductSans",
                      fontStyle: FontStyle.normal,
                      fontSize: 16),
                  textAlign: TextAlign.center),
            ),
            Column(
              children: [
                RoundedButton(
                    text: "Im a Professional",
                    color: Color.fromRGBO(255, 255, 255, 0.3)),
                RoundedButton(
                    text: "Im a Trainer",
                    color: Color.fromRGBO(255, 255, 255, 0.3)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
