import 'package:flutter/material.dart';
import 'package:hci_booking_pt/components/rounded_button.dart';
import 'package:hci_booking_pt/components/rounded_input.dart';
import 'package:hci_booking_pt/components/screen_with_background.dart';
import 'package:hci_booking_pt/theme/colors.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MainColors.kDark,
      body: ScreenWithBackground(
        pathBackground: "asset/images/background/1.jpg",
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 30),
              child: Text("KADAFI",
                  style: const TextStyle(
                      color: const Color(0xffffffff),
                      fontWeight: FontWeight.w700,
                      fontFamily: "ProductSans",
                      fontStyle: FontStyle.normal,
                      fontSize: 70),
                  textAlign: TextAlign.left),
            ),
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
                RoundedInputField(
                  hintText: "Username",
                ),
                RoundedInputField(
                  hintText: "Password",
                ),
                RoundedButton(
                  text: "Login",
                ),
              ],
            ),
            Container(
              child: Text("Forget Password",
                  style: const TextStyle(
                      color: const Color(0xffffffff),
                      fontWeight: FontWeight.w400,
                      fontFamily: "ProductSans",
                      fontStyle: FontStyle.normal,
                      fontSize: 16),
                  textAlign: TextAlign.center),
            ),
            Container(
              child: Text("OR",
                  style: const TextStyle(
                      color: const Color(0xffffffff),
                      fontWeight: FontWeight.w400,
                      fontFamily: "ProductSans",
                      fontStyle: FontStyle.normal,
                      fontSize: 16),
                  textAlign: TextAlign.center),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Icon(Icons.g_translate,color: MainColors.kMain,),
                Icon(Icons.g_translate,color: MainColors.kMain,),
                Icon(Icons.g_translate,color: MainColors.kMain,),
              ],)
            ),
          ],
        ),
      ),
    );
  }
}
