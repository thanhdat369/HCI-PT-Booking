import 'package:flutter/material.dart';
import 'package:hci_booking_pt/components/rounded_input.dart';
import 'package:hci_booking_pt/components/rounded_input_search.dart';
import 'package:hci_booking_pt/screens/Welcome/components/list_view_demo.dart';
import 'package:hci_booking_pt/screens/user_screen/components/trainer_search_info.dart';

class FindPT extends StatelessWidget {
  const FindPT({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        RoundedInputSearch(
                  hintText: "Find By Name",
                  icon: Icons.search,
                  width: 320,
                  height: 50,
                ),
        Text("TOP RATED PERSONAL TRAINER", style: const TextStyle(
          color:  const Color(0xffc3cbce),
          fontWeight: FontWeight.w700,
          fontFamily: "NotoSans"
          )
          ,),
        //List_View_Demo(),
        Text("", style: TextStyle(fontSize: 5)),
        SizedBox(
          height: 405,
          child: List_View_Demo(),
        ),
        
      ],
    );
  }
}