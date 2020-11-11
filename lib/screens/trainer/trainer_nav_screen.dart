import 'package:flutter/material.dart';
import 'package:hci_booking_pt/screens/trainer/chat_list_screen.dart';
import 'package:hci_booking_pt/screens/trainer/my_client_screen.dart';
import 'package:hci_booking_pt/screens/trainer/my_profile_trainer.dart';
import 'package:hci_booking_pt/screens/trainer/trainer_home_screen.dart';
import 'package:hci_booking_pt/screens/user_screen/components/container_rounded.dart';
import 'package:hci_booking_pt/screens/user_screen/find_pt.dart';
import 'package:hci_booking_pt/screens/user_screen/profile.dart';
import 'package:hci_booking_pt/screens/user_screen/user_home.dart';
import 'package:hci_booking_pt/screens/user_screen/user_home_training.dart';
import 'package:hci_booking_pt/screens/user_screen/user_notification.dart';
import 'package:hci_booking_pt/theme/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';

//Supported class
class TrainerScreenItemDTO {
  String title;
  Widget screen;
  TrainerScreenItemDTO(this.title, this.screen);
}

class TrainerScreen extends StatefulWidget {
  final int currentindex;
  TrainerScreen({Key key, this.currentindex = 0}) : super(key: key);
  @override
  _TrainerScreenState createState() => _TrainerScreenState();
}

class _TrainerScreenState extends State<TrainerScreen> {
  int _currentindex;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this._currentindex = this.widget.currentindex;
  }

  @override
  Widget build(BuildContext context) {
    var _tabs = [
      TrainerScreenItemDTO("HOMEPAGE", TrainerHome()),
      TrainerScreenItemDTO("MY CLIENTS", MyClientScreen()),
      TrainerScreenItemDTO("NOTIFICATION", UserNotification()),
      TrainerScreenItemDTO("PROFILE", MyProfileTrainer()),
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
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ChatListScreen()));
              },
              child: Icon(
                Icons.chat_bubble_outline,
                size: 30,
              ),
            ),
          )
        ],
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
                label: "HOME",
                icon: Icon(Icons.home),
              ),
              BottomNavigationBarItem(
                  label: "MY CLIENT", icon: Icon(Icons.people)),
              BottomNavigationBarItem(
                  label: "NOTIFICATION", icon: Icon(Icons.notifications)),
              BottomNavigationBarItem(
                  label: "ACCOUNT", icon: Icon(Icons.account_circle_outlined)),
            ],
          )),
    );
  }
}
