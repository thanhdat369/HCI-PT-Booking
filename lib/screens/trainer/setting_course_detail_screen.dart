import 'package:flutter/material.dart';
import 'package:hci_booking_pt/components/rounded_button.dart';
import 'package:hci_booking_pt/components/rounded_button_size.dart';
import 'package:hci_booking_pt/components/rounded_button_size_border.dart';
import 'package:hci_booking_pt/screens/trainer/client_detail_screen.dart';
import 'package:hci_booking_pt/screens/trainer/components/client.dart';
import 'package:hci_booking_pt/screens/trainer/components/dropdown_chosing_week.dart';
import 'package:hci_booking_pt/screens/trainer/components/user_box_myclient_item.dart';
import 'package:hci_booking_pt/screens/trainer/exercise_list_screen.dart';
import 'package:hci_booking_pt/screens/trainer/trainer_nav_screen.dart';
import 'package:hci_booking_pt/screens/user_screen/components/user_screen_back_button.dart';
import 'package:hci_booking_pt/theme/colors.dart';

class SettingCourseDetailScreen extends StatefulWidget {
  final bool isComeFromAccept;
  const SettingCourseDetailScreen({Key key, this.isComeFromAccept = false})
      : super(key: key);

  @override
  _SettingCourseDetailScreenState createState() =>
      _SettingCourseDetailScreenState();
}

class _SettingCourseDetailScreenState extends State<SettingCourseDetailScreen> {
  List<List<Map<String, String>>> fullSelected = [
    new List<Map<String, String>>(),
    new List<Map<String, String>>(),
    new List<Map<String, String>>(),
    new List<Map<String, String>>(),
    new List<Map<String, String>>(),
    new List<Map<String, String>>(),
    new List<Map<String, String>>()
  ];
  notifyParent(List<Map<String, String>> insideSelected, int index) {
    fullSelected[index] = insideSelected;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    List<Widget> exercises(int index) {
      List<Widget> exercises = new List<Widget>();
      for (var item in fullSelected[index]) {
        exercises.add(RoundedButtonSizeBorder(
          borderColor: MainColors.kSoftLight,
          color: MainColors.kSoftDark,
          text: "    " + item["name"],
          width: size.width * 0.9,
          height: 30,
          fontsize: 13,
          isAlignLeft: true,
          fontWeight: FontWeight.normal,
        ));
      }
      return exercises;
    }

    Widget day(int index) {
      List<Map<String, String>> selected = fullSelected[index];

      return Container(
        padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
        child: fullSelected[index].length == 0
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Day " + (index + 1).toString(),
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        fontFamily: "Product Sans"),
                  ),
                  RoundedButtonSizeBorder(
                    textColor: MainColors.kLight,
                    borderColor: MainColors.kMain,
                    text: "    +  Add new exercise",
                    color: MainColors.kSoftDark,
                    width: size.width * 0.9,
                    height: 30,
                    fontsize: 13,
                    isAlignLeft: true,
                    fontWeight: FontWeight.normal,
                    press: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ExerciseListScreen(
                                  index: index,
                                  selected: selected,
                                  notifyParent: notifyParent,
                                ))),
                  )
                ],
              )
            : Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Day " + (index + 1).toString(),
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        fontFamily: "Product Sans"),
                  ),
                  Column(children: exercises(index)),
                  // Flexible(
                  //     child: new ListView.builder(
                  //         itemCount: exercises(index).length,
                  //         itemBuilder: (BuildContext ctxt, int i) {
                  //           return exercises(index)[i];
                  //         })),
                  RoundedButtonSizeBorder(
                    textColor: MainColors.kLight,
                    borderColor: MainColors.kMain,
                    text: "    +  Add new exercise",
                    color: MainColors.kSoftDark,
                    width: size.width * 0.9,
                    height: 30,
                    fontsize: 13,
                    isAlignLeft: true,
                    fontWeight: FontWeight.normal,
                    press: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ExerciseListScreen(
                                  index: index,
                                  selected: selected,
                                  notifyParent: notifyParent,
                                ))),
                  )
                ],
              ),
      );
    }

    List<Widget> days() {
      List<Widget> days = new List<Widget>();
      for (var i = 0; i < 7; i++) {
        days.add(day(i));
      }
      return days;
    }

    return UserScreenBackButton(
      title: "Setting PROGRAM Detail",
      child: Container(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Text("Create a program",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                    fontFamily: "Product Sans")),
          ),
          DropdownChosingWeek(
            notifyParent: (String abc) {},
          ),
          Expanded(
              child: new ListView.builder(
                  itemCount: days().length,
                  itemBuilder: (BuildContext ctxt, int index) {
                    return days()[index];
                  })),
          RoundedButton(
              text: "DONE",
              press: () {
                if (!widget.isComeFromAccept) {
                  Navigator.pop(context);
                  Navigator.pop(context);
                } else {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => TrainerScreen(
                                currentindex: 1,
                              )));
                }
                Client.isSetted = true;
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ClientDetailScreen(
                              isSetted: Client.isSetted,
                            )));
              })
        ],
      )),
    );
  }
}
