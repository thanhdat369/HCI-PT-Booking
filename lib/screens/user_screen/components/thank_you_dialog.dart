import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hci_booking_pt/theme/colors.dart';

import '../user_screen.dart';

class TextDialog {
  final String text;
  var _timer;

  final Widget _widget;

  TextDialog(this.text, this._widget);
  void showThankYouDialog(BuildContext context) {
    var dialog = Dialog(
      backgroundColor: MainColors.kSoftDark,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0))),
      child: Container(
          width: context.size.width * 0.4,
          height: 50,
          child: Center(
              child: Text(text,
                  style: TextStyle(
                      color: MainColors.kLight,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center))),
    );

    showDialog(
      context: context,
      builder: (BuildContext context) {
        _timer = Timer(Duration(seconds: 2), () {
          Navigator.of(context).pop();
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => _widget));
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
