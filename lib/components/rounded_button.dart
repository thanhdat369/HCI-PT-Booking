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
    this.textColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: this.color,
      margin: EdgeInsets.symmetric(vertical: 5),
      width: size.width * 0.8,
      height:size.height * 0.1,
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(8)),
        child: FlatButton(
          color: color,
          onPressed: press,
          child: Text(
            text.toUpperCase(),
            textAlign: TextAlign.center,
            style: TextStyle(color: textColor,fontSize: 20),
          ),
        ),
      ),
    );
  }
}
