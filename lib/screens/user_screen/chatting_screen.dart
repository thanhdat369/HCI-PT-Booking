import 'package:flutter/material.dart';
import 'package:hci_booking_pt/screens/user_screen/components/user_screen_back_button.dart';

class ChattingScreen extends StatelessWidget {
  const ChattingScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return UserScreenBackButton(
      title: "Michel Jordan",
      child: Container(child: Text("Chatting Screen"),),
    );
  }
}