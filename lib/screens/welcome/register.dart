import 'package:flutter/material.dart';
import 'package:hci_booking_pt/components/brand_label.dart';
import 'package:hci_booking_pt/components/rounded_button.dart';
import 'package:hci_booking_pt/components/rounded_input.dart';
import 'package:hci_booking_pt/components/rounded_password.dart';
import 'package:hci_booking_pt/components/screen_with_background.dart';
import 'package:hci_booking_pt/screens/Welcome/components/radio_button.dart';
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
            FormTitle(title: "Login"),
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
                RoundedButton(
                  text: "REGISTER",
                  
                ),
              ],
            ),
            Divider(),           
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already have an account?"),
                Text("Login", style: TextStyle(color: MainColors.kMain)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
