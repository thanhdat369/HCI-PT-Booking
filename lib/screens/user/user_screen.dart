import 'package:flutter/material.dart';
import 'package:hci_booking_pt/theme/colors.dart';

class UserScreen extends StatefulWidget {
  Widget child;
  UserScreen({Key key,this.child}) : super(key: key);
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
        title: Text("Home"),
        centerTitle: true,
      ),
      backgroundColor: MainColors.kDark,
      body: this.widget.child,
      bottomNavigationBar: Container(
          decoration: BoxDecoration(
              border:
                  Border(top: BorderSide(color: MainColors.kMain, width: 3))),
                  padding: EdgeInsets.only(top:10),
          child: BottomNavigationBar(
            unselectedItemColor: MainColors.kLight,
            type: BottomNavigationBarType.fixed,
            backgroundColor: MainColors.kDark,
            items: [
              BottomNavigationBarItem(label: "Hello", icon: Icon(Icons.home)),
              BottomNavigationBarItem(
                  label: "Hello", icon: Icon(Icons.supervised_user_circle)),
              BottomNavigationBarItem(
                  label: "Hello", icon: Icon(Icons.fitness_center)),
              BottomNavigationBarItem(
                  label: "Hello", icon: Icon(Icons.account_box)),
            ],
          )),
    );
  }
}
