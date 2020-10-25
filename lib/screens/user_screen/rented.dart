import 'package:flutter/material.dart';
import 'package:hci_booking_pt/components/rounded_button.dart';
import 'package:hci_booking_pt/components/square_image.dart';
import 'package:hci_booking_pt/screens/user_screen/components/user_screen_back_button.dart';
import 'package:hci_booking_pt/theme/colors.dart';

class RentedScreen extends StatelessWidget {
  const RentedScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return UserScreenBackButton(
      title: "RENTED",
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
            Container(width: 240, child: Text(titile, style: const TextStyle(fontSize: 15,fontWeight: FontWeight.w700,
              fontFamily: "NotoSans",),)),
            Container(
              width: 40,
              child: Text(price, style: const TextStyle(fontSize: 15,fontWeight: FontWeight.w700,
              fontFamily: "NotoSans",),),
            )
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          
      children: [
        const Divider(
          color: Colors.white,
          height: 40,
          thickness: 1,
          indent: 10,
          endIndent: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text("Trainer",
              style: const TextStyle(
                fontWeight: FontWeight.w700,
                fontFamily: "NotoSans",
                fontSize: 18,
              ),
              textAlign: TextAlign.left),
        ),
        
        Padding(
          padding: const EdgeInsets.only(left: 10, top: 7),
          child: Text("RENTED",
              style: const TextStyle(
                fontWeight: FontWeight.w700,
                fontFamily: "NotoSans",
                fontSize: 55,
                color: MainColors.kMain,
              ),
              textAlign: TextAlign.left),
        ),

//Please wait for your coach to arrange the exercises for you.
//He will send it to you no later than 48 hours from now.
        Padding(
          padding: const EdgeInsets.only(left: 10, top: 7),
          child: Text("Please wait for your coach to arrange the exercises for you. He will send it to you no later than 48 hours from now.",
              style: const TextStyle(
                fontWeight: FontWeight.w700,
                fontFamily: "NotoSans",
                fontSize: 10,
              ),
              textAlign: TextAlign.center),
        ),

        

        Container(
            margin: EdgeInsets.only(top: 100),
            alignment: Alignment.bottomCenter,
            child: RoundedButton(
          text: 'GO BACK',
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
          padding: EdgeInsets.only(left: 10),
          alignment: Alignment.topLeft,
          child: Text(
                      "Your contact with",
                      style: const TextStyle(
                          color: const Color(0xffffffff),
                          fontWeight: FontWeight.w700,
                          fontFamily: "NotoSans",
                          fontStyle: FontStyle.normal,
                          fontSize: 18),
                    ),
        ),
        Container(
          padding: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 7),
          child: Row(
            children: [
              SquareImage(size: 110,),
              Container(
                height: 110,
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
                    Padding(
                      padding: const EdgeInsets.only(top: 4,bottom: 3),
                      child: Text(
                        "October  30,  2020",
                        style: const TextStyle(
                            color: const Color(0xffc3cbce),
                            fontWeight: FontWeight.w700,
                            fontFamily: "NotoSans",
                            fontStyle: FontStyle.normal,
                            fontSize: 15),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(bottom: 3),
                      child: Text("                     -", style: const TextStyle(),),
                    ),

                    Text(
                      "November 30, 2020",
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
