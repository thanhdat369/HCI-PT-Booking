import 'package:flutter/material.dart';
import 'package:hci_booking_pt/theme/colors.dart';

class UserScreen extends StatefulWidget {
  Widget child;
  String title;
  UserScreen({Key key, this.child, this.title}) : super(key: key);
  @override
  _UserScreenState createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MainColors.kDark,
        // leading: BackButton(color: MainColors.kLight),
        title: Text(this.widget.title),
        centerTitle: true,
      ),
      backgroundColor: MainColors.kDark,
      body: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30)),
            color: MainColors.kSoftDark
            ),
        child: this.widget.child,
      ),
      bottomNavigationBar: Container(
          decoration: BoxDecoration(
              border:
                  Border(top: BorderSide(color: MainColors.kMain, width: 3))),
          padding: EdgeInsets.only(top: 10),
          child: BottomNavigationBar(
            unselectedItemColor: MainColors.kLight,
            type: BottomNavigationBarType.fixed,
            backgroundColor: MainColors.kDark,
            items: [
              BottomNavigationBarItem(label: "Home", icon: Icon(Icons.home)),
              BottomNavigationBarItem(
                  label: "Search", icon: Icon(Icons.search)),
              BottomNavigationBarItem(
                  label: "Hello", icon: Icon(Icons.fitness_center)),
              BottomNavigationBarItem(
                  label: "Account", icon: Icon(Icons.account_circle_outlined)),
            ],
          )),
    );
  }
}
