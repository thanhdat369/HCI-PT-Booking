import 'package:flutter/material.dart';
import 'package:hci_booking_pt/components/rounded_input.dart';
import 'package:hci_booking_pt/components/rounded_input_search.dart';
import 'package:hci_booking_pt/screens/Welcome/components/list_view_demo.dart';
import 'package:hci_booking_pt/screens/trainer/components/user_box_myclient_item.dart';
import 'package:hci_booking_pt/screens/user_screen/components/trainer_search_info.dart';

class MyClientScreen extends StatelessWidget {
  const MyClientScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RoundedInputSearch(
          hintText: "Find By Name",
          icon: Icons.search,
          width: size.width * 0.9,
          height: 40,
        ),
        // Container(
        //   padding: EdgeInsets.only(bottom: 8),
        //   child: Text(
        //     "a-z",
        //     style: const TextStyle(
        //         color: const Color(0xffc3cbce),
        //         fontWeight: FontWeight.w700,
        //         fontFamily: "Noto Sans"),
        //   ),
        // ),
        //List_View_Demo(),
        Expanded(
          // child: SingleChildScrollView(
          child: myClientListView,
        )
        // ),
      ],
    );
  }
}

Widget myClientListView = ListView(
  physics: PageScrollPhysics(),
  children: [
    UserBoxMyClientItem(
        isSetted: false,
        name: "Le Thanh Dat",
        avatarNumber: 2,
        time: "Tue 10:30 - 12:00"),
    const Divider(
        color: Colors.white, height: 10, thickness: 1, indent: 0, endIndent: 0),
    UserBoxMyClientItem(),
    const Divider(
        color: Colors.white, height: 10, thickness: 1, indent: 0, endIndent: 0),
    UserBoxMyClientItem(
        name: "Pham Huu Loi", avatarNumber: 6, time: "Tue 13:00 - 14:30"),
    const Divider(
        color: Colors.white, height: 10, thickness: 1, indent: 0, endIndent: 0),
    UserBoxMyClientItem(
        name: "Bui Minh Hieu", avatarNumber: 4, time: "Tue 14:45 - 16:15"),
    const Divider(
        color: Colors.white, height: 10, thickness: 1, indent: 0, endIndent: 0),
  ],
);
