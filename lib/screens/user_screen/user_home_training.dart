import 'package:flutter/material.dart';
import 'package:hci_booking_pt/components/icon_rounded_button_size.dart';
import 'package:hci_booking_pt/components/rounded_button_size.dart';
import 'package:hci_booking_pt/components/square_image.dart';
import 'package:hci_booking_pt/screens/user_screen/call_video.dart';
import 'package:hci_booking_pt/screens/user_screen/chatting_screen.dart';
import 'package:hci_booking_pt/screens/user_screen/confirm_end_course.dart';
import 'package:hci_booking_pt/screens/user_screen/rounder_training_day.dart';
import 'package:hci_booking_pt/theme/colors.dart';

class UserHomeTraining extends StatelessWidget {
  final Function press;
  const UserHomeTraining({Key key, this.press}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Info_CheckOut(),
        const Divider(
          color: Colors.white,
          height: 10,
          thickness: 1,
          indent: 10,
          endIndent: 10,
        ),
        SizedBox(
          height: size.height * 0.41,
          child: Info_Exercise(),
        ),
        Container(
          margin: EdgeInsets.only(top: 0.5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "This course will end a 20 November, 2019",
                style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w700,
                    color: MainColors.kSoftLight),
              ),
              RoundedButtonSize(
                  text: "End Now",
                  height: 24,
                  width: 80,
                  press: () => ConfirmEndCourse().showAlertDialog(context))
            ],
          ),
        ),
      ],
    ));
  }
}

class Info_CheckOut extends StatelessWidget {
  const Info_CheckOut({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(left: 10),
          alignment: Alignment.topLeft,
          child: Text(
            "Training with",
            style: const TextStyle(
                color: const Color(0xffffffff),
                fontWeight: FontWeight.w700,
                fontFamily: "Noto Sans",
                fontStyle: FontStyle.normal,
                fontSize: 18),
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 7),
          child: Row(
            children: [
              SquareImage(
                size: 110,
              ),
              Container(
                height: 130,
                margin: EdgeInsets.only(left: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Micheal  Jordan",
                      style: const TextStyle(
                          color: const Color(0xffffffff),
                          fontWeight: FontWeight.w700,
                          fontFamily: "Noto Sans",
                          fontStyle: FontStyle.normal,
                          fontSize: 20),
                    ),
                    IconRoundedButtonSize(
                      text: "Send Message",
                      width: 170,
                      height: 30,
                      icon: Icons.message,
                      press: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ChatScreen())),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 3),
                      child: Text(
                        "Meeting will start in 30 minutes",
                        style: const TextStyle(fontSize: 10),
                      ),
                    ),
                    IconRoundedButtonSize(
                      text: "Join Meeting",
                      width: 170,
                      height: 30,
                      icon: Icons.video_call,
                      press: () => Navigator.push(context,
                          MaterialPageRoute(builder: (context) => CallVideo())),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}

class Info_Exercise extends StatelessWidget {
  const Info_Exercise({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      children: [
        Text(
          "Week 1",
          style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w700,
              color: MainColors.kSoftLight),
        ),
        RoundedTrainingDay(
          is_finish: true,
        ),
        RoundedTrainingDay(
          title: "Day 2 - Full Leg Workout",
          num_of_excercise: 6,
        ),
        RoundedTrainingDay(
          title: "Day 3 - Upper Body Workout",
          num_of_excercise: 5,
        ),
        Text(
          "Week 2",
          style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w700,
              color: MainColors.kSoftLight),
        ),
        RoundedTrainingDay(
          title: "Day 4 - Full Leg Workout",
          num_of_excercise: 6,
        ),
        RoundedTrainingDay(
          title: "Day 5 - Full Leg Workout",
          num_of_excercise: 6,
        ),
        RoundedTrainingDay(
          title: "Day 6 - Upper Body Workout",
          num_of_excercise: 5,
        ),
        Text(
          "Week 3",
          style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w700,
              color: MainColors.kSoftLight),
        ),
        RoundedTrainingDay(
          title: "Day 7 - Full Leg Workout",
          num_of_excercise: 6,
        ),
        RoundedTrainingDay(
          title: "Day 8 - Full Leg Workout",
          num_of_excercise: 6,
        ),
        RoundedTrainingDay(
          title: "Day 9 - Upper Body Workout",
          num_of_excercise: 5,
        ),
        Text(
          "Week 4",
          style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w700,
              color: MainColors.kSoftLight),
        ),
        RoundedTrainingDay(
          title: "Day 10 - Full Leg Workout",
          num_of_excercise: 6,
        ),
        RoundedTrainingDay(
          title: "Day 11 - Full Leg Workout",
          num_of_excercise: 6,
        ),
        RoundedTrainingDay(
          title: "Day 12 - Upper Body Workout",
          num_of_excercise: 5,
        ),
      ],
    );
  }
}
