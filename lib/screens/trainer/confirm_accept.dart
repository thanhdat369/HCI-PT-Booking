import 'package:flutter/material.dart';
import 'package:hci_booking_pt/components/rounded_input_search.dart';
import 'package:hci_booking_pt/screens/user_screen/review_course.dart';
import 'package:hci_booking_pt/theme/colors.dart';

class ConfirmAcceptClient {
  void showAlertDialog(BuildContext context, Function action, Function later) {
    Widget laterButton = TextButton(
      child: Text("Later", style: TextStyle(color: MainColors.kLight)),
      onPressed: () {
        later();

        Navigator.of(context, rootNavigator: true).pop();
      },
    );
    Widget yesButton = TextButton(
      child: Text("Set now", style: TextStyle(color: MainColors.kLight)),
      onPressed: () {
        Navigator.of(context, rootNavigator: true).pop();

        action();
      },
    );

    var alertDialog = AlertDialog(
      contentPadding: EdgeInsets.fromLTRB(
          context.size.width * 0.05, 10, context.size.width * 0.05, 10),
      backgroundColor: MainColors.kSoftDark,
      title: Text("Accepted"),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0))),
      content: Container(
          padding: EdgeInsets.only(top: 0),
          height: (context.size.height * 0.13 > 100)
              ? context.size.height * 0.13
              : 100,
          width: context.size.width * 0.8,
          child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                        "  Set client course now?",
                        textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 15),
                      )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [laterButton, yesButton],
                  )
                ],
              ))),
      titleTextStyle: TextStyle(
          color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
      contentTextStyle: TextStyle(
          color: MainColors.kLight, fontSize: 16, fontFamily: "Noto Sans"),
    );
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alertDialog;
      },
    );
  }
}
