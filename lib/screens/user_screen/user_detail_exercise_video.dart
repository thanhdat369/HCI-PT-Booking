import 'package:flutter/material.dart';
import 'package:hci_booking_pt/controller/video_controller.dart';
import 'package:hci_booking_pt/screens/user_screen/components/user_screen_back_button.dart';

class UserDetailExerciseVideoScreen extends StatefulWidget {
  UserDetailExerciseVideoScreen({Key key}) : super(key: key);

  @override
  _UserDetailExerciseVideoScreenState createState() =>
      _UserDetailExerciseVideoScreenState();
}

class _UserDetailExerciseVideoScreenState
    extends State<UserDetailExerciseVideoScreen> {
  @override
  Widget build(BuildContext context) {
    return UserScreenBackButton(
        title: "EXERCISE DETAIL",
        child: SingleChildScrollView(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 10),
              child: Text(
                "Barbell Back Squat".toUpperCase(),
                style: TextStyle(fontSize: 19),
              ),
            ),
            VideoPlayerScreen(),
            InstructionBlock(),
          ],
        )));
  }
}

class InstructionBlock extends StatelessWidget {
  const InstructionBlock({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [Text("Instruction"), Text("dasdsad")],
      ),
    );
  }
}
