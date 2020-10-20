import 'package:flutter/material.dart';
import 'package:hci_booking_pt/controller/video_controller.dart';
import 'package:hci_booking_pt/screens/user_screen/components/user_screen_back_button.dart';

class UserDetailExerciseVideoScreen extends StatefulWidget {
  UserDetailExerciseVideoScreen({Key key}) : super(key: key);

  @override
  _UserDetailExerciseVideoScreenState createState() =>
      _UserDetailExerciseVideoScreenState();
}

class _UserDetailExerciseVideoScreenState extends State<UserDetailExerciseVideoScreen> {
  @override
  Widget build(BuildContext context) {
    return UserScreenBackButton(
        title: "DatLe", child: SingleChildScrollView(child: VideoPlayerScreen()));
  }
}
