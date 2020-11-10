import 'package:flutter/material.dart';
import 'package:hci_booking_pt/components/rounded_button.dart';
import 'package:hci_booking_pt/components/rounded_button_size.dart';
import 'package:hci_booking_pt/screens/user_screen/profile_trainer.dart';
import 'package:hci_booking_pt/theme/colors.dart';
import 'package:hci_booking_pt/trainer.dart';

class Trainer_Search_Info extends StatelessWidget {
  final int price;

  final String name;

  final String expertise;

  final int avatarNumber;

  final int commentCount;
  const Trainer_Search_Info(
      {Key key,
      this.price = 25,
      this.name = "Michael Jordan",
      this.expertise = "Body Weight, Strengthen",
      this.avatarNumber = 1,
      this.commentCount = 6283})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5),
      height: 150,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Column(
            children: [
              Container(
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('asset/images/trainerAvatar/' +
                          avatarNumber.toString() +
                          '.jpg'),
                      fit: BoxFit.fill,
                    ),
                    border: Border.all(width: 2, color: MainColors.kLight),
                    borderRadius: BorderRadius.circular(20)),
                // child: CircleAvatar(
                //   radius: 55,
                //   child: ClipOval(
                //     child: Image.asset(
                //       "asset/images/background/mans.jpg",
                //       fit: BoxFit.cover,
                //     ),
                //   ),
                // )
              ),
              Container(
                padding: EdgeInsets.only(top: 5),
                width: 90,
                height: 20,
                child: Text(
                  "\$" + price.toString() + "/month",
                  style: TextStyle(fontSize: 13, color: Colors.yellow),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
          Container(
            height: 130,
            margin: EdgeInsets.only(left: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  name,
                  style: const TextStyle(
                      color: const Color(0xffffffff),
                      fontWeight: FontWeight.w700,
                      fontFamily: "Noto Sans",
                      fontStyle: FontStyle.normal,
                      fontSize: 20),
                ),
                Text(expertise,
                    style: const TextStyle(
                        color: MainColors.kLight,
                        fontFamily: "Noto Sans",
                        fontStyle: FontStyle.normal,
                        fontSize: 12)),
                Row(
                  children: [
                    Icon(Icons.star, color: Colors.yellow, size: 15),
                    Icon(Icons.star, color: Colors.yellow, size: 15),
                    Icon(Icons.star, color: Colors.yellow, size: 15),
                    Icon(Icons.star, color: Colors.yellow, size: 15),
                    Icon(Icons.star, color: Colors.yellow, size: 15),
                    Text(
                      '(' + commentCount.toString() + ')',
                      style:
                          TextStyle(fontSize: 12, color: MainColors.kSoftLight),
                    )
                  ],
                ),
                RoundedButtonSize(
                    text: "View Detail",
                    width: 200,
                    height: 30,
                    press: () {
                      setInfo();
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Profile_Trainer()));
                    })
              ],
            ),
          ),
        ],
      ),
    );
  }

  setInfo() {
    Trainer.avatarNumber = avatarNumber;
    Trainer.price = price;
    Trainer.expertise = expertise;
    Trainer.commentCount = commentCount;
    Trainer.name = name;
  }
}
