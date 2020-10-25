import 'package:flutter/material.dart';
import 'package:hci_booking_pt/components/rounded_input.dart';
import 'package:hci_booking_pt/components/rounded_input_search.dart';
import 'package:hci_booking_pt/screens/Welcome/components/list_view_demo.dart';
import 'package:hci_booking_pt/screens/user_screen/components/trainer_search_info.dart';

class FindPT extends StatelessWidget {
  const FindPT({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RoundedInputSearch(
          hintText: "Find By Name",
          icon: Icons.search,
          width: size.width * 0.85,
          height: 50,
        ),
        Text(
          "TOP RATED PERSONAL TRAINER",
          style: const TextStyle(
              color: const Color(0xffc3cbce),
              fontWeight: FontWeight.w700,
              fontFamily: "NotoSans"),
        ),
        //List_View_Demo(),
        Expanded(
          // child: SingleChildScrollView(
          child: List_View_Demo(),
        )
        // ),
      ],
    );
  }
}
