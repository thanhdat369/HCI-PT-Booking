import 'package:flutter/material.dart';
import 'package:hci_booking_pt/components/rounded_button.dart';
import 'package:hci_booking_pt/screens/user_screen/find_pt.dart';
import 'package:hci_booking_pt/screens/user_screen/user_screen.dart';

class UserHome extends StatelessWidget {
  final Function press;

  const UserHome({Key key, this.press}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Your training is empty now!"),
        Text(""),
        RoundedButton(
          text: "FIND TRAINER",
          press: press,
        ),
      ],
    );
  }
}
