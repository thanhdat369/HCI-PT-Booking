import 'dart:html';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hci_booking_pt/components/brand_label.dart';
import 'package:hci_booking_pt/components/rounded_button.dart';
import 'package:hci_booking_pt/components/rounded_input.dart';
import 'package:hci_booking_pt/components/rounded_password.dart';
import 'package:hci_booking_pt/components/screen_with_background.dart';
import 'package:hci_booking_pt/screens/user_screen/user_screen.dart';
import 'package:hci_booking_pt/screens/welcome/components/form_title.dart';
import 'package:hci_booking_pt/theme/colors.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  TextEditingController userController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();
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
                  textEditingController: userController,
                ),
                RoundedPasswordField(
                  hintText: "Password",
                  textEditingController: passwordController,
                ),
                RoundedButton(
                  text: "Login",
                  press: _login,
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
                      child: FaIcon(
                        FontAwesomeIcons.facebook,
                        color: Colors.blue,
                        size: 70,
                      )),
                  Container(
                      margin: EdgeInsets.symmetric(horizontal: 15),
                      child: FaIcon(
                        FontAwesomeIcons.google,
                        color: Colors.red,
                        size: 70,
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

  void _login() {
    setState(() {
      if (userController.text == "user" &&
          passwordController.text == "123456") {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => UserScreen()));
      }
      // print(userController.text);
      // print(passwordController.text);
      // Navigator.push(context, MaterialPageRoute(builder: (context)=> UserScreen()));
    });
  }
}
