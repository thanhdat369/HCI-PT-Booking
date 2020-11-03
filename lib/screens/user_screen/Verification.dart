import 'package:flutter/material.dart';
import 'package:hci_booking_pt/components/brand_label.dart';
import 'package:hci_booking_pt/components/rounded_button.dart';
import 'package:hci_booking_pt/components/screen_with_background.dart';
import 'package:hci_booking_pt/screens/Welcome/create_new_password.dart';
import 'package:hci_booking_pt/screens/user_screen/components/yes_no_dialog.dart';
import 'package:hci_booking_pt/theme/colors.dart';

class Verification extends StatelessWidget {
  const Verification({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final node = FocusScope.of(context);
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: MainColors.kDark,
      body: ScreenWithBackground(
        pathBackground: "asset/images/background/2.png",
        child: Container(
          height: size.height * 0.7,
          width: size.width * 0.85,
          margin: EdgeInsets.symmetric(
              horizontal: size.width * 0.15 / 2,
              vertical: size.height * 0.3 / 2),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "We did send and OTP code to your email,",
                style: TextStyle(fontSize: 15, fontFamily: 'Noto Sans'),
              ),
              Text(
                "please check it and enter below",
                style: TextStyle(fontSize: 15, fontFamily: 'Noto Sans'),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Expanded(
                      child: TextField(
                        onChanged: (_) => {if (_.length == 1) node.nextFocus()},
                        style: TextStyle(color: Colors.white, fontSize: 30),
                        keyboardType: TextInputType.number,
                        maxLength: 1,
                        textAlign: TextAlign.center,
                        decoration: new InputDecoration(
                            enabledBorder: const OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Colors.red, width: 3.0),
                            ),
                            focusedBorder: const OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Colors.red, width: 3.0),
                            )),
                      ),
                    ),
                    Expanded(
                      child: TextField(
                        onChanged: (_) => {if (_.length == 1) node.nextFocus()},
                        style: TextStyle(color: Colors.white, fontSize: 30),
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.number,
                        maxLength: 1,
                        decoration: new InputDecoration(
                            enabledBorder: const OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Colors.red, width: 3.0),
                            ),
                            focusedBorder: const OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Colors.red, width: 3.0),
                            )),
                      ),
                    ),
                    Expanded(
                      child: TextField(
                        onChanged: (_) => {if (_.length == 1) node.nextFocus()},
                        style: TextStyle(color: Colors.white, fontSize: 30),
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        maxLength: 1,
                        decoration: new InputDecoration(
                            enabledBorder: const OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Colors.red, width: 3.0),
                            ),
                            focusedBorder: const OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Colors.red, width: 3.0),
                            )),
                      ),
                    ),
                    Expanded(
                      child: TextField(
                        onChanged: (_) => {if (_.length == 1) node.unfocus()},
                        style: TextStyle(color: Colors.white, fontSize: 30),
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.number,
                        maxLength: 1,
                        decoration: new InputDecoration(
                            enabledBorder: const OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Colors.red, width: 3.0),
                            ),
                            focusedBorder: const OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Colors.red, width: 3.0),
                            )),
                      ),
                    ),
                  ],
                ),
              ),
              RoundedButton(
                text: "Confirm",
                press: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CreateNewPasswordScreen()));
                },
              ),
              RoundedButton(
                text: "Cancel",
                color: MainColors.kSoftLight,
                textColor: MainColors.kDark,
                press: () {
                  Navigator.pop(context);
                  Navigator.pop(context);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
