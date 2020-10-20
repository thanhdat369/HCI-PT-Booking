import 'package:flutter/material.dart';
import 'package:hci_booking_pt/screens/user_screen/components/container_rounded.dart';
import 'package:hci_booking_pt/screens/user_screen/find_pt.dart';
import 'package:hci_booking_pt/screens/user_screen/profile.dart';
import 'package:hci_booking_pt/screens/user_screen/user_home.dart';
import 'package:hci_booking_pt/screens/user_screen/user_notification.dart';
import 'package:hci_booking_pt/theme/colors.dart';
//Supported class
class UserScreenItemDTO
{
  String title;
  Widget screen;
  UserScreenItemDTO(this.title,this.screen);

}

class UserScreen extends StatefulWidget {
  UserScreen({Key key}) : super(key: key);
  @override
  _UserScreenState createState() => _UserScreenState();
}


class _UserScreenState extends State<UserScreen> {
  int _currentindex = 2;
  final _tabs = [
    UserScreenItemDTO("Home",UserHome()),
    UserScreenItemDTO("Search",FindPT()),
    UserScreenItemDTO("Notification",UserNotification()),
    UserScreenItemDTO("Profile",Profile()),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MainColors.kDark,
        title: Text(_tabs[_currentindex].title),
        centerTitle: true,
      ),
      backgroundColor: MainColors.kDark,
      body: ContainerRounded(
        child: _tabs[_currentindex].screen,
      ),
      bottomNavigationBar: Container(
          decoration: BoxDecoration(
              border:
                  Border(top: BorderSide(color: MainColors.kMain, width: 3))),
          padding: EdgeInsets.only(top: 10),
          child: BottomNavigationBar(
            currentIndex: _currentindex,
            onTap: (index){
              setState(() {
                 _currentindex = index;
              });
            },
            unselectedItemColor: MainColors.kLight,
            type: BottomNavigationBarType.fixed,
            backgroundColor: MainColors.kDark,
            items: [
              BottomNavigationBarItem(label: "Home", icon: Icon(Icons.home)),
              BottomNavigationBarItem(
                  label: "Search", icon: Icon(Icons.search)),
              BottomNavigationBarItem(
                  label: "Notification", icon: Icon(Icons.notifications)),
              BottomNavigationBarItem(
                  label: "Account", icon: Icon(Icons.account_circle_outlined)),
            ],
          )),
    );
  }
}
