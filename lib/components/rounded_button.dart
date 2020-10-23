import 'package:flutter/material.dart';
import 'package:hci_booking_pt/theme/colors.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final Function press;
  final Color color, textColor;
  const RoundedButton({
    Key key,
    this.text,
    this.press,
    this.color = MainColors.kMain,
    this.textColor = MainColors.kLight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: this.color,
      margin: EdgeInsets.symmetric(vertical: 5),
      width: size.width * 0.85,
      height: size.height * 0.07,
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(8)),
        child: FlatButton(
          color: color,
          onPressed: press,
          child: Text(
            text.toUpperCase(),
            textAlign: TextAlign.center,
            style: TextStyle(
                color: textColor,
                fontSize: 15,
                fontWeight: FontWeight.w700,
                fontFamily: "Product Sans"),
          ),
        ),
      ),
    );
  }
}
