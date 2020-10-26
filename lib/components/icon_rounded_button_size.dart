import 'package:flutter/material.dart';
import 'package:hci_booking_pt/theme/colors.dart';

class IconRoundedButtonSize extends StatelessWidget {
  final String text;
  final Function press;
  final Color color, textColor;
  final double width;
  final double height;
  final IconData icon;
  const IconRoundedButtonSize({
    Key key,
    this.text,
    this.press,
    this.color = MainColors.kMain,
    this.textColor = MainColors.kLight,
    this.width,
    this.height,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          color: this.color,
        ),
        margin: EdgeInsets.symmetric(vertical: 5),
        width: width,
        height: height,
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: textColor,
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                  fontFamily: "Product Sans"),
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Icon(icon, color: MainColors.kLight))
        ]),
      ),
    );
  }
}
