import 'package:flutter/material.dart';
import 'package:hci_booking_pt/components/brand_label.dart';
import 'package:hci_booking_pt/components/rounded_button.dart';
import 'package:hci_booking_pt/components/rounded_input.dart';
import 'package:hci_booking_pt/components/rounded_password.dart';
import 'package:hci_booking_pt/components/screen_with_background.dart';
import 'package:hci_booking_pt/screens/welcome/components/form_title.dart';
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
            BrandLabel(),
            FormTitle(title: "Login"),
            Column(
              children: [
                RoundedInputField(
                  hintText: "Username",
                ),
                RoundedPasswordField(
                  hintText: "Password",
                  icon: Icons.lock,
                ),
                RoundedButton(
                  text: "Login",
                ),
              ],
            ),
            Column(children: [
              Text("Forget Password ?",
                  style: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontFamily: "ProductSans",
                      fontStyle: FontStyle.normal,
                      fontSize: 16),
                  textAlign: TextAlign.center),
              Container(
                child: Text("OR",
                    style: const TextStyle(
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                        fontSize: 16),
                    textAlign: TextAlign.center),
              ),
            ]),
            Container(
              margin: EdgeInsets.symmetric(vertical: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      margin: EdgeInsets.symmetric(horizontal: 15),
                      child: Icon(
                        Icons.group,
                        size: 70,
                        color: Colors.blue,
                      )),
                  Container(
                      margin: EdgeInsets.symmetric(horizontal: 15),
                      child: Icon(
                        Icons.add_a_photo,
                        size: 70,
                        color: MainColors.kMain,
                      )),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account ?  "),
                Text("Register", style: TextStyle(color: MainColors.kMain)),
              ],
            )
          ],
        ),
      ),
    );
  }
}