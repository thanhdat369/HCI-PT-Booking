import 'package:flutter/material.dart';
import 'package:hci_booking_pt/theme/colors.dart';

class RoundedButtonSize extends StatelessWidget {
  final String text;
  final Function press;
  final Color color, textColor;
  final double width;
  final double height;
  const RoundedButtonSize({
    Key key,
    this.text,
    this.press,
    this.color = MainColors.kMain,
    this.textColor = Colors.white,
    this.width,
    this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Size size = MediaQuery.of(context).size;
    return Container(
      color: this.color ,
      margin: EdgeInsets.symmetric(vertical: 5),
      //width: size.width * 0.85,
      width: width,
      height: height,
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(4)),
        child: FlatButton(
          padding: EdgeInsets.symmetric(vertical: 2),
          color: color,
          onPressed: press,
          child: Text(
            text,
            style: TextStyle(color: textColor,fontSize: 15),
          ),
        ),
      ),
    );
  }
}