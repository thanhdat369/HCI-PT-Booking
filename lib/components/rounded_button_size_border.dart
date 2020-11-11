import 'package:flutter/material.dart';
import 'package:hci_booking_pt/theme/colors.dart';

class RoundedButtonSizeBorder extends StatelessWidget {
  final String text;
  final Function press;
  final Color color, textColor;
  final double width;
  final double height;
  final double fontsize;
  final bool isAlignLeft;
  final FontWeight fontWeight;
  final Color borderColor;
  final String secondText;
  const RoundedButtonSizeBorder(
      {Key key,
      this.text,
      this.press,
      this.color = MainColors.kMain,
      this.textColor = Colors.white,
      this.width,
      this.height,
      this.fontsize = 15,
      this.isAlignLeft = false,
      this.fontWeight = FontWeight.w700,
      this.borderColor = MainColors.kMain,
      this.secondText = ""})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press,
      child: Container(
          alignment: isAlignLeft ? Alignment.centerLeft : Alignment.center,
          decoration: BoxDecoration(
            border: Border.all(color: borderColor),
            borderRadius: BorderRadius.all(Radius.circular(5)),
            color: this.color,
          ),
          margin: EdgeInsets.symmetric(vertical: 5),
          width: width,
          height: height,
          child: secondText == ""
              ? Text(
                  text,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: textColor,
                      fontSize: fontsize,
                      fontWeight: fontWeight,
                      fontFamily: "Product Sans"),
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      text,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: textColor,
                          fontSize: fontsize,
                          fontWeight: fontWeight,
                          fontFamily: "Product Sans"),
                    ),
                    Text(
                      secondText,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: textColor,
                          fontSize: fontsize,
                          fontWeight: fontWeight,
                          fontFamily: "Product Sans"),
                    )
                  ],
                )),
    );
  }
}
