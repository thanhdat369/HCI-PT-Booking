import 'package:flutter/material.dart';
import 'package:hci_booking_pt/components/rounded_button.dart';
import 'package:hci_booking_pt/components/square_image.dart';
import 'package:hci_booking_pt/screens/user_screen/checkout.dart';
import 'package:hci_booking_pt/screens/user_screen/components/scroll_profile_trainer.dart';
import 'package:hci_booking_pt/theme/colors.dart';

class Profile_Trainer extends StatelessWidget {
  const Profile_Trainer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: MainColors.kDark,
        leading: BackButton(color: MainColors.kLight),
        title: Text(
          "TRAINER PROFILE",
          style: TextStyle(fontSize: 19, color: MainColors.kSoftLight),
        ),
        centerTitle: true,
      ),
      backgroundColor: MainColors.kDark,
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Divider(
                color: Colors.white,
                height: 10,
                thickness: 1,
                indent: 20,
                endIndent: 20),
            Trainer_Search_Info(),
            Center(
                child: RoundedButton(
              text: "RENT",
              press: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => CheckOutScreen())),
            )),
            const Divider(
                color: Colors.white,
                height: 10,
                thickness: 1,
                indent: 27,
                endIndent: 27),
            Expanded(
              child: ScrollTrainer(),
            )
          ],
        ),
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
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('asset/images/background/mans.jpg'),
                      fit: BoxFit.fill,
                    ),
                    border: Border.all(width: 2, color: MainColors.kLight),
                    borderRadius: BorderRadius.circular(20)),
              ),
            ],
          ),
          Container(
            height: 100,
            margin: EdgeInsets.only(left: 30),
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
                Padding(
                  padding: const EdgeInsets.only(top: 5, bottom: 5),
                  child: Text(
                    "Body Weight, Strengthen",
                    style: const TextStyle(
                        color: MainColors.kSoftLight,
                        fontWeight: FontWeight.w700,
                        fontFamily: "Noto Sans",
                        fontStyle: FontStyle.normal,
                        fontSize: 12),
                  ),
                ),
                Row(
                  children: [
                    Icon(Icons.star, color: MainColors.kMain, size: 15),
                    Icon(Icons.star, color: MainColors.kMain, size: 15),
                    Icon(Icons.star, color: MainColors.kMain, size: 15),
                    Icon(Icons.star, color: MainColors.kMain, size: 15),
                    Icon(Icons.star, color: MainColors.kMain, size: 15),
                    Text(
                      "(6923)",
                      style: TextStyle(fontSize: 12, color: MainColors.kMain),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Text(
                    "\$29/month",
                    style: const TextStyle(
                        color: Colors.yellow,
                        fontWeight: FontWeight.w700,
                        fontFamily: "Noto Sans",
                        fontStyle: FontStyle.normal,
                        fontSize: 12),
                  ),
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
      margin: EdgeInsets.fromLTRB(23, 5, 0, 5),
      //padding: EdgeInsets.only(left: 5),
      width: size.width * 0.87,
      alignment: Alignment.center,
      child: Row(children: [
        Container(
            margin: EdgeInsets.only(right: 20),
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
            fontSize: 13,
          ),
        )
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
