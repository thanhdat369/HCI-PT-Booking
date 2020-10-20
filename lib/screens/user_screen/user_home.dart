import 'package:flutter/material.dart';
import 'package:hci_booking_pt/components/rounded_button.dart';

class UserHome extends StatelessWidget {
  const UserHome({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Your training is empty now!"),
        Text(""),
        RoundedButton(text: "FIND TRAINER",),
      ],
      
    );
  }
}
