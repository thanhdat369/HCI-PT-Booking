import 'package:flutter/material.dart';
import 'package:hci_booking_pt/components/icon_rounded_button_size.dart';
import 'package:hci_booking_pt/components/rounded_button.dart';
import 'package:hci_booking_pt/components/rounded_button_size.dart';
import 'package:hci_booking_pt/screens/trainer/components/client.dart';
import 'package:hci_booking_pt/screens/user_screen/call_video.dart';
import 'package:hci_booking_pt/screens/user_screen/profile_trainer.dart';
import 'package:hci_booking_pt/theme/colors.dart';
import 'package:hci_booking_pt/trainer.dart';

import '../client_detail_screen.dart';

class UserMeetingBoxInfo extends StatelessWidget {
  final String name;

  final String time;

  final int avatarNumber;
  final String startDate;
  final String dueDate;

  const UserMeetingBoxInfo(
      {Key key,
      this.name = "Trieu Minh Huy",
      this.time = "Tue 8:45 - 10:15",
      this.avatarNumber = 1,
      this.startDate = "19 November, 2020",
      this.dueDate = "18 December, 2020"})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
      width: size.width * 0.9,
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('asset/images/trainerAvatar/' +
                      avatarNumber.toString() +
                      '.jpg'),
                  fit: BoxFit.fill,
                ),
                border: Border.all(width: 2, color: MainColors.kLight),
                borderRadius: BorderRadius.circular(20)),
          ),
          Container(
            height: 100,
            width: size.width * 0.9 - 122,
            margin: EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  name,
                  style: const TextStyle(
                      color: const Color(0xffffffff),
                      fontWeight: FontWeight.w700,
                      fontFamily: "Noto Sans",
                      fontStyle: FontStyle.normal,
                      fontSize: 20),
                ),
                Container(
                  width: 120,
                  child: Text(time,
                      style: const TextStyle(
                          color: MainColors.kLight,
                          fontFamily: "Noto Sans",
                          fontStyle: FontStyle.normal,
                          fontSize: 15)),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RoundedButtonSize(
                        text: "View Detail",
                        fontsize: 11,
                        width: 115,
                        height: 30,
                        press: () {
                          setInfo();
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ClientDetailScreen()));
                        }),
                    IconRoundedButtonSize(
                      text: "Join Meeting",
                      fontsize: 11,
                      width: 115,
                      height: 30,
                      icon: Icons.video_call,
                      press: () => Navigator.push(context,
                          MaterialPageRoute(builder: (context) => CallVideo())),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  setInfo() {
    Client.name = name;
    Client.avatarNumber = avatarNumber;
    Client.dueDate = dueDate;
    Client.startDate = startDate;
    Client.time = time;
  }
}
