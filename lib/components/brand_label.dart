import 'package:flutter/material.dart';

class BrandLabel extends StatelessWidget {
  const BrandLabel({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 5, bottom: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 85,
              child: Text("FPT",
                  style: const TextStyle(
                      fontWeight: FontWeight.w900,
                      fontStyle: FontStyle.normal,
                      fontFamily: "Product Sans",
                      letterSpacing: 30,
                      fontSize: 85),
                  textAlign: TextAlign.center),
            ),
            Container(
              height: 17,
              child: Text("Finding Professional Trainer",
                  style: const TextStyle(
                      fontWeight: FontWeight.normal,
                      fontStyle: FontStyle.normal,
                      fontFamily: "Product Sans",
                      letterSpacing: 0,
                      fontSize: 17),
                  textAlign: TextAlign.center),
            )
          ],
        ));
  }
}
