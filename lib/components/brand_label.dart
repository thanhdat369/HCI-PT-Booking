import 'package:flutter/material.dart';

class BrandLabel extends StatelessWidget {
  const BrandLabel({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child:Text("KADAFI",
        style: const TextStyle(
            fontWeight: FontWeight.w700,
            fontStyle: FontStyle.normal,
            letterSpacing: 8,
            fontSize: 60),
        textAlign: TextAlign.center)
        );
  }
}
