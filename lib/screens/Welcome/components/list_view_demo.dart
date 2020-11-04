import 'package:flutter/material.dart';
import 'package:hci_booking_pt/screens/user_screen/components/trainer_search_info.dart';

class List_View_Demo extends StatelessWidget {
  const List_View_Demo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
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
        const Divider(
            color: Colors.white,
            height: 10,
            thickness: 0,
            indent: 20,
            endIndent: 20),
        Trainer_Search_Info(
            name: "Anthony Jam",
            expertise: "Weightlifting",
            avatarNumber: 3,
            price: 27,
            commentCount: 4536),
        const Divider(
            color: Colors.white,
            height: 10,
            thickness: 0,
            indent: 20,
            endIndent: 20),
        Trainer_Search_Info(
            name: "Steve Roger",
            expertise: "Weight-Bearing",
            avatarNumber: 4,
            price: 29,
            commentCount: 4452),
        const Divider(
            color: Colors.white,
            height: 10,
            thickness: 0,
            indent: 20,
            endIndent: 20),
        Trainer_Search_Info(
            name: "Kathy Kine",
            expertise: "Aerobics",
            avatarNumber: 5,
            price: 24,
            commentCount: 3572),
        const Divider(
            color: Colors.white,
            height: 10,
            thickness: 0,
            indent: 20,
            endIndent: 20),
        Trainer_Search_Info(
            name: "Rob Bert",
            expertise: "Weightlifting",
            avatarNumber: 6,
            price: 28,
            commentCount: 3123),
      ],
    );
  }
}
