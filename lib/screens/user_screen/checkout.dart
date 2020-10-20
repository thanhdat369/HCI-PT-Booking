import 'package:flutter/material.dart';
import 'package:hci_booking_pt/components/rounded_button.dart';
import 'package:hci_booking_pt/screens/user_screen/components/user_screen_back_button.dart';

class CheckOutScreen extends StatelessWidget {
  const CheckOutScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return UserScreenBackButton(
      title: "Check Out",
      child: Column(
        children: [
          Info_CheckOut(),
          CheckOut(),
        ],
      ),
    );
  }
}

class CheckOut extends StatelessWidget {
  const CheckOut({Key key}) : super(key: key);
  Widget a(String titile, String price) {
    return Container(
        margin: EdgeInsets.only(top: 20, bottom: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(width: 240, child: Text(titile, style: const TextStyle(fontSize: 17,fontWeight: FontWeight.w700,
              fontFamily: "NotoSans",),)),
            Container(
              width: 40,
              child: Text(price, style: const TextStyle(fontSize: 17,fontWeight: FontWeight.w700,
              fontFamily: "NotoSans",),),
            )
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        const Divider(
          color: Colors.white,
          height: 40,
          thickness: 1,
          indent: 20,
          endIndent: 20,
        ),
        Text("Bill Detail",
            style: const TextStyle(
              fontWeight: FontWeight.w700,
              fontFamily: "NotoSans",
              fontSize: 18,
            ),
            textAlign: TextAlign.left),
        Container(
          margin: EdgeInsets.only(bottom: 45, top: 15,),
            child: Column(
          children: [
            a("Personal Trainer Fee", "\$ 27"),
            a("Gym Fee", "\$ 13"),
            a("Tax (10%)", "\$ 4"),
          ],
        )),
        Container(
            alignment: Alignment.bottomCenter,
            child: RoundedButton(
          text: 'PAYMENT',
        )),
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
          padding: EdgeInsets.only(left: 20),
          alignment: Alignment.topLeft,
          child: Text(
                      "Your Apointment with",
                      style: const TextStyle(
                          color: const Color(0xffffffff),
                          fontWeight: FontWeight.w700,
                          fontFamily: "NotoSans",
                          fontStyle: FontStyle.normal,
                          fontSize: 18),
                    ),
        ),
        Container(
          padding: EdgeInsets.only(left: 10, right: 10, top: 32, bottom: 7),
          child: Row(
            children: [
              Container(
                  child: CircleAvatar(
                radius: 55,
                child: ClipOval(
                  child: Image.asset(
                    "asset/images/background/mans.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              )),
              Container(
                margin: EdgeInsets.only(left: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Micheal  Jordan",
                      style: const TextStyle(
                          color: const Color(0xffffffff),
                          fontWeight: FontWeight.w700,
                          fontFamily: "NotoSans",
                          fontStyle: FontStyle.normal,
                          fontSize: 20),
                    ),
                    Text(
                      "October  30,  2020",
                      style: const TextStyle(
                          color: const Color(0xffc3cbce),
                          fontWeight: FontWeight.w700,
                          fontFamily: "NotoSans",
                          fontStyle: FontStyle.normal,
                          fontSize: 15),
                    ),
                    Text(
                      "10:00 \$ AM",
                      style: const TextStyle(
                          color: const Color(0xffc3cbce),
                          fontWeight: FontWeight.w700,
                          fontFamily: "NotoSans",
                          fontStyle: FontStyle.normal,
                          fontSize: 15),
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
