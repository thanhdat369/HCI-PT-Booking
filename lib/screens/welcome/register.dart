import 'package:flutter/material.dart';
import 'package:hci_booking_pt/components/brand_label.dart';
import 'package:hci_booking_pt/components/rounded_button.dart';
import 'package:hci_booking_pt/components/rounded_input.dart';
import 'package:hci_booking_pt/components/rounded_password.dart';
import 'package:hci_booking_pt/components/screen_with_background.dart';
import 'package:hci_booking_pt/screens/welcome/components/form_title.dart';
import 'package:hci_booking_pt/theme/colors.dart';

class RegisterScreen extends StatefulWidget {
  RegisterScreen({Key key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  int groupValue = 1;
  bool isCheck = true;
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
            FormTitle(title: "REGISTER"),
            Column(
              children: [
                RoundedInputField(
                  hintText: "Enter Mobile No.",
                ),
                RoundedInputField(
                  hintText: "Enter Full Name",
                ),
                RoundedInputField(
                  hintText: "Enter Email",
                  icon: Icons.email,
                ),
                RoundedPasswordField(
                  hintText: "Password",
                  ishaveVisibleButton: false,
                ),
                RoundedPasswordField(
                  hintText: "Confirm Password",
                  ishaveVisibleButton: false,
                ),
                Column(
                  children: <Widget>[
                    new Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          new Radio(
                              groupValue: groupValue,
                              value: 0,
                              activeColor: MainColors.kMain,
                              onChanged: (int) {
                                setState(() {
                                  groupValue = int;
                                });
                              }),
                          new Text(
                            'Male',
                            style: new TextStyle(fontSize: 16.0),
                          ),
                          new Radio(
                              groupValue: groupValue,
                              value: 1,
                              activeColor: MainColors.kMain,
                              onChanged: (int) {
                                setState(() {
                                  groupValue = int;
                                });
                              }),
                          new Text(
                            'Female',
                            style: new TextStyle(fontSize: 16.0),
                          ),
                        ]),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Checkbox(
                        value: isCheck,
                        checkColor: MainColors.kMain, // color of tick Mark
                        activeColor: MainColors.kLight,
                        onChanged: (bool value) {
                          setState(() {
                            isCheck = value;
                          });
                        }),
                    Text("Agree to the Terms of Service & Privacy Policy",
                        style: TextStyle(fontSize: 13)),
                  ],
                ),
                RoundedButton(
                    text: "REGISTER",
                    press: () {
                      Navigator.pop(context);
                    }),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account? ",
                  style: TextStyle(height: 2, fontSize: 18),
                ),
                GestureDetector(
                  child: Text("Login",
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: MainColors.kMain,
                          fontSize: 20,
                          height: 2,
                          decoration: TextDecoration.underline)),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
