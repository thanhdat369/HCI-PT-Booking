import 'package:flutter/material.dart';
import 'package:hci_booking_pt/components/rounded_button.dart';
import 'package:hci_booking_pt/screens/user_screen/find_pt.dart';
import 'package:hci_booking_pt/screens/user_screen/user_screen.dart';
import 'package:hci_booking_pt/theme/colors.dart';

import 'components/trainer_search_info.dart';

class UserHome extends StatelessWidget {
  final Function press;

  const UserHome({Key key, this.press}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          "Your training is empty now!".toUpperCase(),
          style: TextStyle(fontSize: 20, color: MainColors.kLight),
        ),
        Container(
          alignment: Alignment.centerLeft,
          child: Text(
            "This is some recommend personal trainer for you:",
          ),
        ),
        Column(
          children: [
            Trainer_Search_Info(),
            const Divider(
                color: Colors.white,
                height: 10,
                thickness: 0,
                indent: 20,
                endIndent: 20),
            Trainer_Search_Info(
              name: "Jonathan Robert",
              expertise: "Calisthenics",
              avatarNumber: 2,
              price: 23,
              commentCount: 5463,
            ),
          ],
        ),
        RoundedButton(
          text: "FIND MORE",
          press: press,
        ),
      ],
    );
  }
}
