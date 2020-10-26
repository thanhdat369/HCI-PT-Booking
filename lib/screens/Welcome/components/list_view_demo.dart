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
        Trainer_Search_Info(),
        const Divider(
            color: Colors.white,
            height: 10,
            thickness: 0,
            indent: 20,
            endIndent: 20),
        Trainer_Search_Info(),
        const Divider(
            color: Colors.white,
            height: 10,
            thickness: 0,
            indent: 20,
            endIndent: 20),
        Trainer_Search_Info(),
        const Divider(
            color: Colors.white,
            height: 10,
            thickness: 0,
            indent: 20,
            endIndent: 20),
        Trainer_Search_Info(),
        const Divider(
            color: Colors.white,
            height: 10,
            thickness: 0,
            indent: 20,
            endIndent: 20),
        Trainer_Search_Info(),
      ],
    );
  }
}
