import 'package:flutter/material.dart';
import 'package:hci_booking_pt/theme/colors.dart';

class Radio_Button extends StatelessWidget {
  const Radio_Button({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: MyStatefulWidget(),
        ),
      ),
    );
  }
}

/// This is the stateful widget that the main application instantiates.
class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _count = 0;
  bool checkBoxValue = false;
  int group = 1;

  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          Checkbox(

                  value: checkBoxValue,
                  checkColor: MainColors.kMain, // color of tick Mark
                  activeColor: MainColors.kSoftLight,
              onChanged: (bool value) {
                print(value);
                setState(() {
                  checkBoxValue = value;
                });
              }),
          Text("Agree to the Terms of Service & Privacy Policy"),
          Radio(
            value: 1,
            groupValue: group,
            activeColor: MainColors.kMain,
            onChanged: (T) {
              print(T);
              setState(() {
                group = T;
              });
            },
          ),
          Text("Male"),
          Radio(
            value: 2,
            groupValue: group,
            activeColor: MainColors.kMain,
            onChanged: (T) {
              print(T);
              setState(() {
                group = T;
              });
            },
          ),
          Text("FeMale"),
        ],
      ),
    );
  }
}
