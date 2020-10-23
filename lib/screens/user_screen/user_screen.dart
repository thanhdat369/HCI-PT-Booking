import 'package:flutter/material.dart';
import 'package:hci_booking_pt/screens/user_screen/components/container_rounded.dart';
import 'package:hci_booking_pt/screens/user_screen/find_pt.dart';
import 'package:hci_booking_pt/screens/user_screen/profile.dart';
import 'package:hci_booking_pt/screens/user_screen/user_home.dart';
import 'package:hci_booking_pt/screens/user_screen/user_notification.dart';
import 'package:hci_booking_pt/theme/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';

//Supported class
class UserScreenItemDTO {
  String title;
  Widget screen;
  UserScreenItemDTO(this.title, this.screen);
}

class UserScreen extends StatefulWidget {
  UserScreen({Key key}) : super(key: key);
  @override
  _UserScreenState createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  int _currentindex = 0;

  @override
  Widget build(BuildContext context) {
    var _tabs = [
      UserScreenItemDTO("TRAINING", UserHome(
        press: () {
          setState(() {
            _currentindex = 1;
          });
        },
      )),
      UserScreenItemDTO("FIND YOUR TRAINER", FindPT()),
      UserScreenItemDTO("NOTIFICATION", UserNotification()),
      UserScreenItemDTO("PROFILE", Profile()),
    ];
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: MainColors.kDark,
        title: Text(_tabs[_currentindex].title,
            style: TextStyle(
                color: MainColors.kSoftLight,
                fontFamily: "Noto Sans",
                fontWeight: FontWeight.w700,
                fontSize: 19)),
        centerTitle: true,
      ),
      backgroundColor: MainColors.kDark,
      resizeToAvoidBottomInset: false,
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
            onTap: (index) {
              setState(() {
                _currentindex = index;
              });
            },
            unselectedItemColor: MainColors.kLight,
            type: BottomNavigationBarType.fixed,
            backgroundColor: MainColors.kDark,
            items: [
              BottomNavigationBarItem(
                label: "TRAINING",
                icon: SvgPicture.asset('asset/images/user_screen/home.svg',
                    color: _currentindex == 0
                        ? MainColors.kMain
                        : MainColors.kLight),
              ),
              BottomNavigationBarItem(
                  label: "FIND TRAINER", icon: Icon(Icons.search)),
              BottomNavigationBarItem(
                  label: "NOTIFICATION", icon: Icon(Icons.notifications)),
              BottomNavigationBarItem(
                  label: "ACCOUNT", icon: Icon(Icons.account_circle_outlined)),
            ],
          )),
    );
  }
}
