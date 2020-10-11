import 'package:flutter/material.dart';
import 'package:hci_booking_pt/components/brand_label.dart';
import 'package:hci_booking_pt/components/rounded_button.dart';
import 'package:hci_booking_pt/components/rounded_input.dart';
import 'package:hci_booking_pt/components/screen_with_background.dart';
import 'package:hci_booking_pt/screens/welcome/components/form_title.dart';
import 'package:hci_booking_pt/theme/colors.dart';

int _groupValue = -1;

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key key}) : super(key: key);
  Widget _myRadioButton({String title, int value, Function onChanged}) {
    return RadioListTile(
      value: value,
      activeColor: MainColors.kMain,
      groupValue: _groupValue,
      onChanged: onChanged,
      title: Text(title,
          style: const TextStyle(
          color:  Colors.white,
        fontWeight: FontWeight.bold,
        fontFamily: "ProductSans",
        fontStyle:  FontStyle.normal,
        fontSize: 16.0
    ),),

    );
  }

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
                MobileInputField(
                  hintText: "Enter Mobile No.",
                ),
                FullNameInput(
                  hintText: "Enter Full Name",
                ),
                EmailInput(
                  hintText: "Enter Email",
                ),
                PasswordInput(
                  hintText: "Password",
                ),
                MobileInputField(
                  hintText: "Confirm Password",
                ),
                RoundedButton(
                  text: "REGISTER",
                ),
              ],
            ),



            Container(
              color: Colors.blue,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children:<Widget> [
                    _myRadioButton(
                      title: "A",
                      value: 0,
                      // onChanged: (newValue) => setState(() => _groupValue = newValue),
                    ),
                  _myRadioButton(
                    title: "FEMALE",
                    value: 0,
                    // onChanged: (newValue) => setState(() => _groupValue = newValue),
                  ),
                ],
              ),
            ),



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
