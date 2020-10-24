import 'package:flutter/material.dart';
import 'package:hci_booking_pt/components/brand_label.dart';
import 'package:hci_booking_pt/components/rounded_button.dart';
import 'package:hci_booking_pt/components/rounded_input.dart';
import 'package:hci_booking_pt/components/screen_with_background.dart';
import 'package:hci_booking_pt/screens/welcome/components/form_title.dart';
import 'package:hci_booking_pt/theme/colors.dart';

class Verification extends StatelessWidget {
  const Verification({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MainColors.kDark,
      body: ScreenWithBackground(
        pathBackground: "asset/images/background/1.jpg",
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            BrandLabel(
            ),
            Container(
              alignment: Alignment.bottomCenter,
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "We did send and OTP code to your email, please check it and enter below",
                    style: TextStyle(fontSize: 20, fontFamily: 'Noto Sans'),
                    textAlign: TextAlign.start,
                  ),
                ],


              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(

                  child: TextField(
                    style: TextStyle(color: Colors.white,fontSize: 30),
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    textAlign: TextAlign.center,
                    decoration: new InputDecoration(

                      enabledBorder: const OutlineInputBorder(
                        borderSide:
                        const BorderSide(color: Colors.red, width: 3.0),
                      ),
                    ),

                  ),

                ),
                Expanded(

                  child: TextField(
                    style: TextStyle(color: Colors.white,fontSize: 30),
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    decoration: new InputDecoration(

                      enabledBorder: const OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.red, width: 3.0),
                      ),
                    ),

                  ),

                ),
                Expanded(

                  child: TextField(
                    style: TextStyle(color: Colors.white,fontSize: 30),
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    maxLength: 1,
                    decoration: new InputDecoration(

                      enabledBorder: const OutlineInputBorder(
                        borderSide:
                        const BorderSide(color: Colors.red, width: 3.0),
                      ),
                    ),

                  ),

                ),
                Expanded(

                  child: TextField(
                    style: TextStyle(color: Colors.white,fontSize: 30),
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    decoration: new InputDecoration(

                      enabledBorder: const OutlineInputBorder(
                        borderSide:
                        const BorderSide(color: Colors.red, width: 3.0),
                      ),
                    ),

                  ),

                ),
              ],
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
}
