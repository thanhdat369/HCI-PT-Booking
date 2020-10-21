import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:hci_booking_pt/components/my_circleavt.dart';
import 'package:hci_booking_pt/components/rounded_button.dart';
import 'package:hci_booking_pt/screens/user_screen/user_screen.dart';
import 'package:hci_booking_pt/theme/colors.dart';

class CircleAvtAccount extends StatelessWidget {
  double radius;
  String name;
  String imagePath;
  CircleAvtAccount(
      {Key key,
      this.radius = 70,
      this.name = "Unknown",
      this.imagePath = "asset/images/user_screen/noavt.jpg"})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Stack(
        children: [
          MyCircleAvatar(
            radius: this.radius,
            imgPath: this.imagePath,
          ),
          // Change avt
          Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                padding: EdgeInsets.all(5),
                child: Icon(
                  Icons.edit,
                  color: Colors.black,
                  size: this.radius / 3,
                ),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(100))),
              ))
        ],
      ),
      Container(
          margin: EdgeInsets.all(10),
          child: Text(
            this.name,
            style: TextStyle(
              fontStyle: FontStyle.normal,
              fontSize: 30,
              fontWeight: FontWeight.w700,
              color: MainColors.kSoftLight,
            ),
          )),
    ]);
  }
}

class Profile extends StatelessWidget {
  const Profile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        CircleAvtAccount(),
        MyIcon(
          icon: Icons.today_sharp,
          title: "Dat Le",
        ),
        MyIcon(
          icon: Icons.today_sharp,
          title: "Dat Le",
        ),
        MyIcon(
          icon: Icons.today_sharp,
          title: "Dat Le",
        ),
        MyIcon(
          icon: Icons.today_sharp,
          title: "Dat Le",
        ),
        RoundedButton(
          text: "Log out",
          press: () {
            Navigator.pop(context);
          },
        )
      ],
    );
  }
}

class MyIcon extends StatelessWidget {
  IconData icon;
  String title;
  MyIcon({Key key, this.icon, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
      alignment: Alignment.center,
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Container(
            margin: EdgeInsets.only(right: 30),
            child: Icon(this.icon, color: MainColors.kMain)),
        Text(
          this.title,
          style: TextStyle(
            color: const Color(0xffc3cbce),
            fontWeight: FontWeight.w500,
            fontStyle: FontStyle.normal,
            fontSize: 20.0,
          ),
        )
      ]),
    );
  }
}
