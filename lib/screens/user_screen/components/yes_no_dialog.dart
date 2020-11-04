import 'package:flutter/material.dart';
import 'package:hci_booking_pt/components/rounded_input_search.dart';
import 'package:hci_booking_pt/screens/user_screen/components/thank_you_dialog.dart';
import 'package:hci_booking_pt/theme/colors.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class YesNoDialog {
  final String text;
  final Widget _widget;

  YesNoDialog(this.text, this._widget);
  void showAlertDialog(BuildContext context) {
    Widget yesButton = FlatButton(
      child: Text("Yes", style: TextStyle(color: MainColors.kLight)),
      color: MainColors.kMain,
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => _widget));
      },
    );
    Widget noButton = FlatButton(
      child: Text("No", style: TextStyle(color: MainColors.kLight)),
      color: MainColors.kDark,
      onPressed: () {
        Navigator.of(context, rootNavigator: true).pop();
      },
    );

    var alertDialog = AlertDialog(
      contentPadding: EdgeInsets.fromLTRB(
          context.size.width * 0.05, 10, context.size.width * 0.05, 10),
      backgroundColor: MainColors.kSoftDark,
      title: Text(text),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0))),
      content: Container(
          padding: EdgeInsets.only(top: 0),
          child: Row(
            children: [Expanded(child: noButton), Expanded(child: yesButton)],
          )),
      titleTextStyle: TextStyle(
          color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
      contentTextStyle: TextStyle(color: Colors.white),
    );
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alertDialog;
      },
    );
  }
}
