import 'package:flutter/material.dart';

class UserWeek extends StatelessWidget {
  const UserWeek({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(scrollDirection: Axis.vertical, children: <Widget>[
      Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Text("Week 1",
            style: const TextStyle(
              fontWeight: FontWeight.w700,
              fontFamily: "Noto Sans",
              fontSize: 18,
            ),
            textAlign: TextAlign.left),
      ),
    ]);
  }
}
