import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hci_booking_pt/components/brand_label.dart';
import 'package:hci_booking_pt/components/rounded_button.dart';
import 'package:hci_booking_pt/components/rounded_input.dart';
import 'package:hci_booking_pt/components/rounded_password.dart';
import 'package:hci_booking_pt/components/screen_with_background.dart';
import 'package:hci_booking_pt/screens/trainer/trainer_nav_screen.dart';
import 'package:hci_booking_pt/screens/user_screen/Verification.dart';
import 'package:hci_booking_pt/screens/user_screen/components/yes_no_dialog.dart';
import 'package:hci_booking_pt/screens/user_screen/user_screen.dart';
import 'package:hci_booking_pt/screens/welcome/components/form_title.dart';
import 'package:hci_booking_pt/screens/welcome/register.dart';
import 'package:hci_booking_pt/theme/colors.dart';

import '../../trainer.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController userController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: MainColors.kDark,
      body: ScreenWithBackground(
        pathBackground: "asset/images/background/2.png",
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
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
                  ishaveVisibleButton: true,
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
              Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: InkWell(
                    onTap: () {
                      YesNoDialog("Reset Password?", Verification())
                          .showAlertDialog(context);
                    },
                    child: Text("Forgot Password ?",
                        style: const TextStyle(
                            fontWeight: FontWeight.w400,
                            fontFamily: "Product Sans",
                            fontStyle: FontStyle.normal,
                            fontSize: 13),
                        textAlign: TextAlign.center),
                  )),
              Container(
                padding: EdgeInsets.only(top: 10),
                child: Text("OR",
                    style: const TextStyle(
                        fontFamily: "Product Sans",
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                        fontSize: 16),
                    textAlign: TextAlign.center),
              ),
            ]),
            Container(
              margin: EdgeInsets.symmetric(vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      margin: EdgeInsets.symmetric(horizontal: 15),
                      child: FaIcon(
                        FontAwesomeIcons.facebook,
                        color: Colors.blue,
                        size: 40,
                      )),
                  Container(
                      margin: EdgeInsets.symmetric(horizontal: 15),
                      child: FaIcon(
                        FontAwesomeIcons.google,
                        color: Colors.red,
                        size: 40,
                      )),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account ?  "),
                GestureDetector(
                  child: Text("Register",
                      style: TextStyle(
                          color: MainColors.kMain,
                          fontFamily: "Product Sans",
                          fontWeight: FontWeight.w700,
                          decoration: TextDecoration.underline)),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RegisterScreen()));
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  void _clear_text() {
    userController.clear();
    passwordController.clear();
  }

  void _login() {
    setState(() {
      if (userController.text == "user" &&
          passwordController.text == "123456") {
        _clear_text();
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => UserScreen()));
      }
      if (userController.text == "trainer" &&
          passwordController.text == "123456") {
        _clear_text();
        setTrainerInfo();
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => TrainerScreen()));
      }
      // print(userController.text);
      // print(passwordController.text);
      // Navigator.push(context, MaterialPageRoute(builder: (context)=> UserScreen()));
    });
  }

  setTrainerInfo() {
    Trainer.avatarNumber = 1;
    Trainer.expertise = "Body Weight, Strengthen";
    Trainer.commentCount = 7683;
    Trainer.name = "Michael Jordan";
  }
}
