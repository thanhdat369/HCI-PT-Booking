import 'package:flutter/material.dart';
import 'package:hci_booking_pt/components/rounded_input_search.dart';
import 'package:hci_booking_pt/screens/user_screen/review_course.dart';
import 'package:hci_booking_pt/theme/colors.dart';

class ChangeExerciseSetDialog {
  void showAlertDialog(
      BuildContext context, Function(String) action, String set) {
    Widget laterButton = FlatButton(
      child: Text("Later", style: TextStyle(color: MainColors.kLight)),
      color: MainColors.kDark,
      onPressed: () {
        Navigator.of(context, rootNavigator: true).pop();
      },
    );
    Widget yesButton = FlatButton(
      child: Text("Set now", style: TextStyle(color: MainColors.kLight)),
      color: MainColors.kMain,
      onPressed: () {
        Navigator.of(context, rootNavigator: true).pop();

        set = "test String";
        action(set);
      },
    );

    var alertDialog = AlertDialog(
      contentPadding: EdgeInsets.fromLTRB(
          context.size.width * 0.05, 10, context.size.width * 0.05, 10),
      backgroundColor: MainColors.kSoftDark,
      title: Text("Edit Exercise"),
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
                      child: Container()

                      // Text(
                      //   set,
                      //   textAlign: TextAlign.left,
                      //   style: TextStyle(fontSize: 15),
                      // )
                      ),
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
