import 'package:flutter/material.dart';

class FormTitle extends StatelessWidget {
  final String title;
  const FormTitle({Key key, @required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        child: Text(this.title,
            style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 30),
            textAlign: TextAlign.center));
  }
}
