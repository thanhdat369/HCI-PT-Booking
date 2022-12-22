import 'package:flutter/material.dart';
import 'package:hci_booking_pt/components/rounded_button_size.dart';
import 'package:hci_booking_pt/components/screen_with_background.dart';
import 'package:hci_booking_pt/screens/trainer/trainer_detail_exercise_video.dart';
import 'package:hci_booking_pt/screens/user_screen/components/user_screen_back_button.dart';
import 'package:hci_booking_pt/screens/user_screen/user_detail_exercise_video.dart';
import 'package:hci_booking_pt/screens/welcome/components/list_view_demo.dart';
import 'package:hci_booking_pt/theme/colors.dart';

class TrainerExerciseScreen extends StatefulWidget {
  TrainerExerciseScreen({Key key}) : super(key: key);

  @override
  _TrainerExerciseScreenState createState() => _TrainerExerciseScreenState();
}

class _TrainerExerciseScreenState extends State<TrainerExerciseScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return UserScreenBackButton(
      title: "Exercises",
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Text(
              "Total Exercise: 6",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
          ),
          Expanded(
            child: ListView(
              children: <Widget>[
                ItemExercise(),
                ItemExercise(
                    title: "Leg Press",
                    imagePath: "asset/images/exercises/Leg Press.png"),
                ItemExercise(
                    title: "Seated Calf Raise",
                    imagePath: "asset/images/exercises/Seated Calf Raise.png"),
                ItemExercise(
                    title: "Seated Leg Curl",
                    imagePath: "asset/images/exercises/Seated Leg Curl.png"),
                ItemExercise(
                    title: "Single Leg Extension",
                    imagePath:
                        "asset/images/exercises/Single Leg Extension.png"),
                ItemExercise(
                    title: "Single Leg Deadlift",
                    imagePath: "asset/images/exercises/Stiff Leg Deadlift.png"),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ItemExercise extends StatelessWidget {
  String imagePath;
  String title;
  String des;
  double size;
  ItemExercise(
      {Key key,
      this.imagePath = "asset/images/exercises/Barbell Back Squat.png",
      this.title = "Barbell Back Squat",
      this.des = "3x8-10 | 10kg",
      this.size = 100})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
            height: size,
            width: size,
            decoration: BoxDecoration(
                border: Border.all(width: 2, color: MainColors.kLight)),
            child: Image.asset(
              imagePath,
              fit: BoxFit.fill,
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Text(
                    this.title.toUpperCase(),
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Text(this.des)
              ],
            ),
          ),
          Container(
              color: MainColors.kMain,
              width: 100,
              height: 30,
              child: TextButton(
                  // padding: EdgeInsets.symmetric(vertical: 2),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                TrainerDetailExerciseVideoScreen()));
                  },
                  child: Text(
                    "Detail",
                    style: TextStyle(color: MainColors.kLight, fontSize: 15),
                  ))),
        ],
      ),
    );
  }
}
