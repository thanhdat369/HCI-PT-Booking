import 'package:flutter/material.dart';

class FormTitle extends StatelessWidget {
  final String title;
  const FormTitle({Key key, @required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 0, bottom: 5),
        child: Text(this.title.toUpperCase(),
            style: const TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 20,
                fontFamily: "Product Sans"),
            textAlign: TextAlign.center));
  }
}
