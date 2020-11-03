import 'package:flutter/material.dart';
import 'package:hci_booking_pt/components/rounded_button.dart';
import 'package:hci_booking_pt/components/square_image.dart';
import 'package:hci_booking_pt/screens/user_screen/booking_calendar.dart';
import 'package:hci_booking_pt/screens/user_screen/components/user_screen_back_button.dart';
import 'package:hci_booking_pt/screens/user_screen/pay_with_momo.dart';
import 'package:hci_booking_pt/screens/user_screen/payment_method.dart';
import 'package:hci_booking_pt/theme/colors.dart';

import '../../trainer.dart';

class CheckOutScreen extends StatelessWidget {
  final int totalPrice;

  const CheckOutScreen({Key key, this.totalPrice}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return UserScreenBackButton(
      title: "CONFIRM",
      child: Column(
        children: [
          Info_CheckOut(),
          CheckOut(
            totalPrice: totalPrice,
          ),
        ],
      ),
    );
  }
}

class CheckOut extends StatelessWidget {
  final int totalPrice;

  const CheckOut({Key key, this.totalPrice}) : super(key: key);
  Widget a(String titile, String price) {
    return Container(
        margin: EdgeInsets.only(top: 20, bottom: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
                width: 240,
                child: Text(
                  titile,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                    fontFamily: "Noto Sans",
                  ),
                )),
            Container(
              child: Text(
                price,
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                  fontFamily: "Noto Sans",
                ),
              ),
            )
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Divider(
          color: Colors.white,
          height: 40,
          thickness: 1,
          indent: 10,
          endIndent: 10,
        ),
        Container(
          width: size.width * 0.85,
          alignment: Alignment.centerLeft,
          child: Text("Bill Detail",
              style: const TextStyle(
                fontWeight: FontWeight.w700,
                fontFamily: "Noto Sans",
                fontSize: 18,
              ),
              textAlign: TextAlign.left),
        ),
        Container(
            alignment: Alignment.centerRight,
            width: size.width * 0.85,
            child: a("Personal Trainer Fee", "\$" + totalPrice.toString())),
        Container(
          alignment: Alignment.centerRight,
          margin: EdgeInsets.only(right: 10),
          child: Text(
            "Total           \$" + totalPrice.toString(),
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontFamily: "Noto Sans",
              fontSize: 18,
            ),
          ),
        ),
        Container(
            margin: EdgeInsets.only(top: 100),
            alignment: Alignment.bottomCenter,
            child: RoundedButton(
                text: 'PAYMENT',
                press: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => PaymentMethod()));
                })),
        Container(
            margin: EdgeInsets.only(top: 10),
            alignment: Alignment.bottomCenter,
            child: RoundedButton(
                text: 'CANCEL',
                color: MainColors.kSoftLight,
                textColor: MainColors.kDark,
                press: () {
                  Navigator.pop(context);
                })),
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
                avatarNumber: Trainer.avatarNumber,
                size: 110,
              ),
              Container(
                height: 110,
                margin: EdgeInsets.only(left: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      Trainer.name,
                      style: const TextStyle(
                          color: const Color(0xffffffff),
                          fontWeight: FontWeight.w700,
                          fontFamily: "Noto Sans",
                          fontStyle: FontStyle.normal,
                          fontSize: 20),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 4, bottom: 3),
                      child: Text(
                        Trainer.startDate,
                        style: const TextStyle(
                            color: const Color(0xffc3cbce),
                            fontWeight: FontWeight.w700,
                            fontFamily: "Noto Sans",
                            fontStyle: FontStyle.normal,
                            fontSize: 15),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 3),
                      child: Text(
                        "                     -",
                        style: const TextStyle(),
                      ),
                    ),
                    Text(
                      Trainer.dueDate,
                      style: const TextStyle(
                          color: const Color(0xffc3cbce),
                          fontWeight: FontWeight.w700,
                          fontFamily: "Noto Sans",
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
