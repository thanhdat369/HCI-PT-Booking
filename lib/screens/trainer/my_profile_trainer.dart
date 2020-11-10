import 'package:flutter/material.dart';
import 'package:hci_booking_pt/components/rounded_button.dart';
import 'package:hci_booking_pt/components/square_image.dart';
import 'package:hci_booking_pt/screens/trainer/components/scroll_my_profile_trainer.dart';
import 'package:hci_booking_pt/screens/user_screen/booking_calendar.dart';
import 'package:hci_booking_pt/screens/user_screen/components/scroll_profile_trainer.dart';
import 'package:hci_booking_pt/theme/colors.dart';

import '../../trainer.dart';

class MyProfileTrainer extends StatelessWidget {
  const MyProfileTrainer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Trainer_Search_Info(),
          const Divider(color: Colors.white, height: 20, thickness: 2),
          Expanded(
            child: ScrollMyProfileTrainer(avatarNumber: Trainer.avatarNumber),
          )
        ],
      ),
    );
  }
}

class Trainer_Search_Info extends StatelessWidget {
  const Trainer_Search_Info({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10, bottom: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('asset/images/trainerAvatar/' +
                          Trainer.avatarNumber.toString() +
                          '.jpg'),
                      fit: BoxFit.fill,
                    ),
                    border: Border.all(width: 2, color: MainColors.kLight),
                    borderRadius: BorderRadius.circular(20)),
              ),
              Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    padding: EdgeInsets.all(5),
                    child: Icon(
                      Icons.edit,
                      color: Colors.black,
                      size: 15,
                    ),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(100))),
                  ))
            ],
          ),
          Container(
            height: 100,
            margin: EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: [
                    Text(
                      Trainer.name,
                      style: const TextStyle(
                          color: const Color(0xffffffff),
                          fontWeight: FontWeight.w700,
                          fontFamily: "Noto Sans",
                          fontStyle: FontStyle.normal,
                          fontSize: 22),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Icon(
                        Icons.edit,
                        color: MainColors.kLight,
                        size: 15,
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Text(
                      Trainer.expertise,
                      style: const TextStyle(
                          color: MainColors.kSoftLight,
                          fontWeight: FontWeight.w700,
                          fontFamily: "Noto Sans",
                          fontStyle: FontStyle.normal,
                          fontSize: 14),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Icon(
                        Icons.edit,
                        color: MainColors.kLight,
                        size: 15,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.star, color: Colors.yellow, size: 15),
                    Icon(Icons.star, color: Colors.yellow, size: 15),
                    Icon(Icons.star, color: Colors.yellow, size: 15),
                    Icon(Icons.star, color: Colors.yellow, size: 15),
                    Icon(Icons.star, color: Colors.yellow, size: 15),
                    Text(
                      "(" + Trainer.commentCount.toString() + ")",
                      style:
                          TextStyle(fontSize: 14, color: MainColors.kSoftLight),
                    )
                  ],
                ),

                //RoundedButtonSize(text: "View Detail", width: 200, height: 30),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MyIconTrainer extends StatelessWidget {
  IconData icon;
  String title;
  MyIconTrainer({Key key, this.icon, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
      //padding: EdgeInsets.only(left: 5),
      width: size.width * 0.87,
      alignment: Alignment.center,
      child: Row(children: [
        Container(
            margin: EdgeInsets.only(right: 15),
            child: Icon(
              this.icon,
              color: MainColors.kSoftLight,
              size: 20,
            )),
        Text(
          this.title,
          style: TextStyle(
            color: MainColors.kSoftLight,
            fontWeight: FontWeight.w500,
            fontStyle: FontStyle.normal,
            fontSize: 15,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Icon(
            Icons.edit,
            color: MainColors.kLight,
            size: 12,
          ),
        ),
      ]),
    );
  }
}

class List_View_Hori extends StatelessWidget {
  const List_View_Hori({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      //padding: EdgeInsets.only(left:),
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: SquareImage(
            radi: 0,
            boWi: 0,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: SquareImage(
            radi: 0,
            boWi: 0,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: SquareImage(
            radi: 0,
            boWi: 0,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: SquareImage(
            radi: 0,
            boWi: 0,
          ),
        ),
      ],
    );
  }
}
