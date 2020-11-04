import 'package:flutter/material.dart';
import 'package:hci_booking_pt/screens/user_screen/exercise_screen.dart';
import 'package:hci_booking_pt/theme/colors.dart';

class RoundedTrainingDay extends StatelessWidget {
  String title;
  int num_of_excercise;
  bool is_finish;
  RoundedTrainingDay(
      {Key key,
      this.title = "Day 01",
      this.num_of_excercise = 6,
      this.is_finish = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => ExerciseScreen()));
      },
      child: Opacity(
        opacity: is_finish ? 0.6 : 1,
        child: Container(
          padding: EdgeInsets.all(5),
          margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: MainColors.kDark,
              border: Border.all(width: 3, color: MainColors.kMain)),
          width: size.width * 0.85,
          height: size.height * 0.1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(bottom: 3),
                child: Text(
                  this.title,
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: MainColors.kLight),
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "$num_of_excercise exercises",
                    style: TextStyle(fontSize: 14, color: MainColors.kLight),
                  ),
                  Row(children: [
                    is_finish
                        ? Icon(
                            Icons.check,
                            color: Colors.green,
                          )
                        : Icon(null),
                    Text(
                      is_finish ? "Finished" : "Start",
                      style: TextStyle(fontSize: 21, color: MainColors.kLight),
                    ),
                  ]),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
