import 'package:flutter/material.dart';
import 'package:hci_booking_pt/components/rounded_button_size.dart';
import 'package:hci_booking_pt/components/screen_with_background.dart';
import 'package:hci_booking_pt/screens/Welcome/login.dart';
import 'package:hci_booking_pt/screens/user_screen/rented.dart';
import 'package:hci_booking_pt/screens/user_screen/user_home.dart';
import 'package:hci_booking_pt/screens/user_screen/user_home_training.dart';
import 'package:hci_booking_pt/screens/user_screen/user_screen.dart';
import 'package:hci_booking_pt/theme/colors.dart';

class PayWithMomo extends StatelessWidget {
  const PayWithMomo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: MainColors.kDark,
      body: ScreenWithBackground(
          opacity: 1,
          pathBackground: "asset/images/background/momoPage.png",
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 22),
                  child: Container(
                      width: 40,
                      height: 40,
                      child: BackButton(color: MainColors.kLight)),
                ),
                Padding(
                    padding: const EdgeInsets.only(left: 10, bottom: 4),
                    child: RoundedButtonSize(
                      text: "Xác nhận",
                      width: size.width * 0.96,
                      height: size.height * 0.08,
                      color: Color(0xFFB61B79),
                      press: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => UserScreen(
                                      isRented: true,
                                    )));
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => RentedScreen()));
                      },
                    )),
              ],
            ),
          )),
    );
  }
}
