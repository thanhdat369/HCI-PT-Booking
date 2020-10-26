import 'package:flutter/material.dart';
import 'package:hci_booking_pt/components/rounded_button.dart';
import 'package:hci_booking_pt/components/rounded_button_size.dart';
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
              child: Center(
                  child: Text(
                "Barbell Back Squat".toUpperCase(),
                style: TextStyle(fontSize: 19),
              )),
            ),
            ChewieVideoPlayer(),
            InstructionBlock(),
            Text(
              "Trainer point : _ _",
              style: TextStyle(fontSize: 20),
            ),
            Center(child: RoundedButton(text: "Post your video")),
            Center(
                child: RoundedButton(
                    press: () {
                      Navigator.pop(context);
                    },
                    text: "Finish exercise")),
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Instruction",
            style: TextStyle(fontSize: 25),
          ),
          Container(
              height: 190,
              margin: EdgeInsets.only(top: 10, bottom: 10),
              child: ListView.builder(
                itemCount: exercise_content.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 5),
                    child: Text(exercise_content[index]),
                  );
                },
              )),
        ],
      ),
    );
  }
}

var exercise_content = [
  "1. Set up for the exercise by setting the barbell to just below shoulder height and loading the weight you want to use.",
  "2. Stand under the bar with your feet at about shoulder width apart.",
  "3. Position the bar so that it is resting on the muscles on the top of your back, not on the back of your neck. The bar should feel comfortable. If it doesn't, try adding some padding to the bar.",
  "4. Now take your hands over the back and grip the bar with a wide grip for stability.",
  "5. You should now bend at the knees and straighten your back in preparation to take the weight off the rack.",
  "6. Keeping your back straight and eyes up, push up through the legs and take the weight off the rack.",
  "7. Take a small step back and stabilize yourself.",
  "8. Keeping your eyes facing forward slowly lower your body down. Don't lean forward as you come down. Your buttocks should come out and drop straight down.",
  "9. Squat down until your thighs are parallel with the floor, and then slowly raise your body back up by pushing through your heels.",
  "10. Do not lock the knees out when you stand up, and then repeat the movement."
];
