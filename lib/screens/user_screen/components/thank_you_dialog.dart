import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hci_booking_pt/theme/colors.dart';

class ThankYou {
  var _timer;
  void showThankYouDialog(BuildContext context) {
    var dialog = Dialog(
      backgroundColor: MainColors.kSoftDark,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0))),
      child: Container(
          width: context.size.width * 0.4,
          height: 50,
          child: Center(
              child: Text("Thank You",
                  style: TextStyle(
                      color: MainColors.kLight,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center))),
    );

    showDialog(
      context: context,
      builder: (BuildContext context) {
        _timer = Timer(Duration(seconds: 1), () {
          Navigator.of(context).pop();
        });
        return dialog;
      },
    ).then((value) {
      if (_timer.isActive) {
        _timer.cancel();
      }
    });
  }
}
