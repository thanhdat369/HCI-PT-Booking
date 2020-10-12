import 'package:flutter/material.dart';
import 'package:hci_booking_pt/theme/colors.dart';

class UserScreenBackButton extends StatefulWidget {
  Widget child;
  String title;
  UserScreenBackButton({Key key, this.child, this.title}) : super(key: key);
  @override
  _UserScreenBackButtonState createState() => _UserScreenBackButtonState();
}

class _UserScreenBackButtonState extends State<UserScreenBackButton> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MainColors.kDark,
        leading: BackButton(color: MainColors.kLight),
        title: Text(this.widget.title),
        centerTitle: true,
      ),
      backgroundColor: MainColors.kDark,
      body: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30)),
            color: MainColors.kSoftDark),
        child: this.widget.child,
      ),
    );
  }
}
