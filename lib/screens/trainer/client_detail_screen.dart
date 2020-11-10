import 'package:flutter/material.dart';
import 'package:hci_booking_pt/components/icon_rounded_button_size.dart';
import 'package:hci_booking_pt/components/rounded_button.dart';
import 'package:hci_booking_pt/components/rounded_button_size.dart';
import 'package:hci_booking_pt/components/square_image.dart';
import 'package:hci_booking_pt/screens/trainer/components/client.dart';
import 'package:hci_booking_pt/screens/trainer/components/trainer_rounder_training_day.dart';
import 'package:hci_booking_pt/screens/trainer/setting_course_detail_screen.dart';
import 'package:hci_booking_pt/screens/trainer/trainer_chatting_screen.dart';
import 'package:hci_booking_pt/screens/user_screen/call_video.dart';
import 'package:hci_booking_pt/screens/user_screen/chatting_screen.dart';
import 'package:hci_booking_pt/screens/user_screen/components/user_screen_back_button.dart';
import 'package:hci_booking_pt/screens/user_screen/confirm_end_course.dart';
import 'package:hci_booking_pt/theme/colors.dart';

class ClientDetailScreen extends StatelessWidget {
  final Function press;
  final bool isSetted;
  const ClientDetailScreen({Key key, this.press, this.isSetted = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return UserScreenBackButton(
      title: "Client Detail",
      child: Container(
          child: Column(
        mainAxisAlignment:
            isSetted ? MainAxisAlignment.spaceBetween : MainAxisAlignment.start,
        children: [
          Info_CheckOut(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: const Divider(
              color: Colors.white,
              height: 1,
              thickness: 1,
              indent: 10,
              endIndent: 10,
            ),
          ),
          Expanded(
            // height: size.height * 0.6,
            child: isSetted ? Info_Exercise() : EmptyCourse(),
          ),
          // Container(
          //   margin: EdgeInsets.only(top: 0.5),
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //     children: [
          //       Text(
          //         "This course will end a " + Client.dueDate,
          //         style: TextStyle(
          //             fontSize: 13,
          //             color: MainColors.kSoftLight,
          //             fontFamily: "Noto Sans"),
          //       ),
          //       RoundedButtonSize(
          //           text: "End Now",
          //           height: 24,
          //           width: 80,
          //           press: () => ConfirmEndCourse().showAlertDialog(context))
          //     ],
          //   ),
          // ),
        ],
      )),
    );
  }
}

class EmptyCourse extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "This client course is empty now!",
          style: const TextStyle(
              color: const Color(0xffffffff),
              fontWeight: FontWeight.w700,
              fontFamily: "Noto Sans",
              fontStyle: FontStyle.normal,
              fontSize: 17),
        ),
        RoundedButton(
            text: "Set Now",
            press: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SettingCourseDetailScreen()));
            })
      ],
    );
  }
}

class Info_CheckOut extends StatelessWidget {
  const Info_CheckOut({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(left: 10, right: 10, top: 0, bottom: 0),
          child: Row(
            children: [
              SquareImage(
                isClient: true,
                size: 110,
              ),
              Container(
                height: 130,
                margin: EdgeInsets.only(left: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      Client.name,
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
                              builder: (context) =>
                                  TrainerChatScreen(name: Client.name))),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 3),
                      child: Text(
                        "Meeting will start in 30 minutes",
                        style: const TextStyle(fontSize: 12),
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
        Container(
          padding: EdgeInsets.symmetric(vertical: 2),
          child: Text(
            "Week 1",
            style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w700,
                color: MainColors.kSoftLight),
          ),
        ),
        TrainerRoundedTrainingDay(
          is_finish: true,
        ),
        TrainerRoundedTrainingDay(
          title: "Day 2 - Full Leg Workout",
          num_of_excercise: 6,
        ),
        TrainerRoundedTrainingDay(
          title: "Day 3 - Upper Body Workout",
          num_of_excercise: 5,
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 2),
          child: Text(
            "Week 2",
            style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w700,
                color: MainColors.kSoftLight),
          ),
        ),
        TrainerRoundedTrainingDay(
          title: "Day 4 - Full Leg Workout",
          num_of_excercise: 6,
        ),
        TrainerRoundedTrainingDay(
          title: "Day 5 - Full Leg Workout",
          num_of_excercise: 6,
        ),
        TrainerRoundedTrainingDay(
          title: "Day 6 - Upper Body Workout",
          num_of_excercise: 5,
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 2),
          child: Text(
            "Week 3",
            style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w700,
                color: MainColors.kSoftLight),
          ),
        ),
        TrainerRoundedTrainingDay(
          title: "Day 7 - Full Leg Workout",
          num_of_excercise: 6,
        ),
        TrainerRoundedTrainingDay(
          title: "Day 8 - Full Leg Workout",
          num_of_excercise: 6,
        ),
        TrainerRoundedTrainingDay(
          title: "Day 9 - Upper Body Workout",
          num_of_excercise: 5,
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 2),
          child: Text(
            "Week 4",
            style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w700,
                color: MainColors.kSoftLight),
          ),
        ),
        TrainerRoundedTrainingDay(
          title: "Day 10 - Full Leg Workout",
          num_of_excercise: 6,
        ),
        TrainerRoundedTrainingDay(
          title: "Day 11 - Full Leg Workout",
          num_of_excercise: 6,
        ),
        TrainerRoundedTrainingDay(
          title: "Day 12 - Upper Body Workout",
          num_of_excercise: 5,
        ),
      ],
    );
  }
}
