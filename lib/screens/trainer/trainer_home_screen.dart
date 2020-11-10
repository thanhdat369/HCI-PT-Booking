import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:hci_booking_pt/components/rounded_button.dart';
import 'package:hci_booking_pt/screens/trainer/components/client.dart';
import 'package:hci_booking_pt/screens/trainer/components/user_box_meeting_info.dart';
import 'package:hci_booking_pt/screens/trainer/components/user_box_newBook_info.dart';
import 'package:hci_booking_pt/theme/colors.dart';

class TrainerHome extends StatefulWidget {
  final Function press;

  const TrainerHome({Key key, this.press}) : super(key: key);

  @override
  _TrainerHomeState createState() => _TrainerHomeState();
}

class _TrainerHomeState extends State<TrainerHome> {
  @override
  Widget build(BuildContext context) {
    var list;
    ClientList.press = () {
      list.removeAt(0);
      list.removeAt(0);
      setState(() {});
    };
    list = ClientList.list;
    Size size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 5),
          child: Text(
            "Upcomming Meeting".toUpperCase(),
            style: TextStyle(
                fontSize: 17,
                fontFamily: "Noto Sans",
                color: MainColors.kLight,
                letterSpacing: 1,
                fontWeight: FontWeight.w800),
          ),
        ),
        Container(
            // color: Colors.red,
            height: 110,
            width: size.width * 0.9,
            child: meetingListView),
        Divider(
          height: 30,
          thickness: 2,
          color: MainColors.kLight,
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 5),
          child: Text(
            "New Client Book".toUpperCase(),
            style: TextStyle(
                fontSize: 17,
                fontFamily: "Noto Sans",
                color: MainColors.kLight,
                letterSpacing: 1,
                fontWeight: FontWeight.w800),
          ),
        ),
        Expanded(
            child: new ListView.builder(
                itemCount: list.length,
                itemBuilder: (BuildContext ctxt, int index) {
                  return list[index];
                }))
        // Expanded(child: bookingListView),
      ],
    );
  }

  Widget meetingListView = PageView(
    scrollDirection: Axis.horizontal,
    children: [
      UserMeetingBoxInfo(),
      UserMeetingBoxInfo(
          name: "Le Thanh Dat", avatarNumber: 2, time: "Tue 10:30 - 12:00"),
      UserMeetingBoxInfo(
          name: "Pham Huu Loi", avatarNumber: 6, time: "Tue 13:00 - 14:30"),
      UserMeetingBoxInfo(
          name: "Bui Minh Hieu", avatarNumber: 4, time: "Tue 14:45 - 16:15"),
    ],
  );

  Widget bookingListView = ListView(
    physics: PageScrollPhysics(),
    children: [
      UserBoxNewBookingInfo(),
      const Divider(
          color: Colors.white,
          height: 10,
          thickness: 1,
          indent: 0,
          endIndent: 0),
      UserBoxNewBookingInfo(
          name: "Le Thanh Dat", avatarNumber: 2, time: "Tue 10:30 - 12:00"),
      const Divider(
          color: Colors.white,
          height: 10,
          thickness: 1,
          indent: 0,
          endIndent: 0),
      UserBoxNewBookingInfo(
          name: "Pham Huu Loi", avatarNumber: 6, time: "Tue 13:00 - 14:30"),
      const Divider(
          color: Colors.white,
          height: 10,
          thickness: 1,
          indent: 0,
          endIndent: 0),
      UserBoxNewBookingInfo(
          name: "Bui Minh Hieu", avatarNumber: 4, time: "Tue 14:45 - 16:15"),
      const Divider(
          color: Colors.white,
          height: 10,
          thickness: 1,
          indent: 0,
          endIndent: 0),
    ],
  );
}
