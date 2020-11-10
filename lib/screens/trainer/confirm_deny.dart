import 'package:flutter/material.dart';
import 'package:hci_booking_pt/components/rounded_input_search.dart';
import 'package:hci_booking_pt/screens/user_screen/review_course.dart';
import 'package:hci_booking_pt/theme/colors.dart';

class ConfirmDeny {
  void showAlertDialog(BuildContext context, Function action) {
    Widget noButton = FlatButton(
      child: Text("No", style: TextStyle(color: MainColors.kLight)),
      color: MainColors.kMain,
      onPressed: () {
        Navigator.of(context, rootNavigator: true).pop();
      },
    );
    Widget yesButton = FlatButton(
      child: Text("Yes", style: TextStyle(color: MainColors.kLight)),
      color: MainColors.kDark,
      onPressed: () {
        action();
        Navigator.of(context, rootNavigator: true).pop();
      },
    );

    var alertDialog = AlertDialog(
      contentPadding: EdgeInsets.fromLTRB(
          context.size.width * 0.05, 10, context.size.width * 0.05, 10),
      backgroundColor: MainColors.kSoftDark,
      title: Text("Confirm"),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0))),
      content: Container(
          padding: EdgeInsets.only(top: 0),
          height: (context.size.height * 0.25 > 200)
              ? context.size.height * 0.25
              : 200,
          width: context.size.width * 0.8,
          child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  RoundedInputSearch(
                    hintText: "Can you tell me a reason",
                    icon: null,
                    width: context.size.width * 0.8,
                    height: (context.size.height * 0.2 * 0.6 > 90)
                        ? context.size.height * 0.2 * 0.6
                        : 90,
                    maxLine: 4,
                  ),
                  Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                        "Do you really want to deny this client?",
                        textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 15),
                      )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [noButton, yesButton],
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
