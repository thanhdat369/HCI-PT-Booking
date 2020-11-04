import 'package:flutter/material.dart';
import 'package:hci_booking_pt/components/brand_label.dart';
import 'package:hci_booking_pt/components/rounded_button.dart';
import 'package:hci_booking_pt/components/rounded_password.dart';
import 'package:hci_booking_pt/components/screen_with_background.dart';
import 'package:hci_booking_pt/screens/Welcome/login.dart';
import 'package:hci_booking_pt/screens/user_screen/components/thank_you_dialog.dart';
import 'package:hci_booking_pt/screens/welcome/components/form_title.dart';
import 'package:hci_booking_pt/theme/colors.dart';

class CreateNewPasswordScreen extends StatefulWidget {
  CreateNewPasswordScreen({Key key}) : super(key: key);

  @override
  _CreateNewPasswordScreenState createState() =>
      _CreateNewPasswordScreenState();
}

class _CreateNewPasswordScreenState extends State<CreateNewPasswordScreen> {
  int group_value = 1;
  bool isCheck = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: MainColors.kDark,
      body: ScreenWithBackground(
        pathBackground: "asset/images/background/2.png",
        child: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              FormTitle(title: "Create New Pasword"),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  RoundedPasswordField(
                    hintText: "Password",
                    ishaveVisibleButton: false,
                  ),
                  RoundedPasswordField(
                    hintText: "Confirm Password",
                    ishaveVisibleButton: false,
                  ),
                  RoundedButton(
                      text: "Reset",
                      press: () {
                        TextDialog("Done", LoginScreen())
                            .showThankYouDialog(context);
                      }),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
