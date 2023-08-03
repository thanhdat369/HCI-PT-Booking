import 'package:flutter/material.dart';
import 'package:hci_booking_pt/components/rounded_input_search.dart';
import 'package:hci_booking_pt/screens/user_screen/components/thank_you_dialog.dart';
import 'package:hci_booking_pt/screens/user_screen/user_screen.dart';
import 'package:hci_booking_pt/theme/colors.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class ReviewCourse {
  void showAlertDialog(BuildContext context) {
    Widget submitButton = TextButton(
      child: Text("SUBMIT", style: TextStyle(color: MainColors.kLight)),
      // color: MainColors.kMain,
      onPressed: () {
        Navigator.of(context, rootNavigator: true).pop();
        TextDialog(
            "ThankYou",
            UserScreen(
              isRented: false,
            )).showThankYouDialog(context);
      },
    );

    var alertDialog = AlertDialog(
      contentPadding: EdgeInsets.fromLTRB(
          context.size.width * 0.05, 10, context.size.width * 0.05, 10),
      backgroundColor: MainColors.kSoftDark,
      title: Text("Rate this course"),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0))),
      content: Container(
          padding: EdgeInsets.only(top: 0),
          height: (context.size.height * 0.3 > 220)
              ? context.size.height * 0.3
              : 220,
          width: context.size.width * 0.8,
          child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  Center(
                    child: Padding(
                        padding: const EdgeInsets.only(bottom: 0),
                        child: SmoothStarRating(
                            allowHalfRating: false,
                            starCount: 5,
                            size: 45,
                            isReadOnly: false,
                            color: Colors.yellow,
                            borderColor: Colors.yellow,
                            spacing: 5.0)),
                  ),
                  RoundedInputSearch(
                    hintText: "Description",
                    icon: null,
                    width: context.size.width * 0.8,
                    height: (context.size.height * 0.2 * 0.6 > 90)
                        ? context.size.height * 0.2 * 0.6
                        : 90,
                    maxLine: 4,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [submitButton],
                  )
                ],
              ))),
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
