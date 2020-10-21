import 'package:flutter/material.dart';
import 'package:hci_booking_pt/components/brand_label.dart';
import 'package:hci_booking_pt/components/rounded_button.dart';
import 'package:hci_booking_pt/components/rounded_input.dart';
import 'package:hci_booking_pt/components/screen_with_background.dart';
import 'package:hci_booking_pt/screens/welcome/components/form_title.dart';
import 'package:hci_booking_pt/theme/colors.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key key}) : super(key: key);

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
            FormTitle(title: "YOUR INFORMATION"),
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
                Column(
                  children: <Widget>[
                    new Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          new Radio(
                            value: 0,
                            activeColor: MainColors.kMain,
                          ),
                          new Text(
                            'Male',
                            style: new TextStyle(fontSize: 16.0),
                          ),
                          new Radio(
                            value: 0,
                            activeColor: MainColors.kMain,
                          ),
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
                        value: true,
                        checkColor: MainColors.kMain, // color of tick Mark
                        activeColor: MainColors.kSoftLight,
                        onChanged: (bool value) {
                          print(value);
                          // setState(() {
                          //   checkBoxValue = value;
                          // });
                        }),
                    Text("Agree to the Terms of Service & Privacy Policy",
                        style: TextStyle(fontSize: 15)),
                  ],
                ),
                RoundedButton(
                  text: "SUBMIT",
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
