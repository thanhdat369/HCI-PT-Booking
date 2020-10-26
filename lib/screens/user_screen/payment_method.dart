import 'package:flutter/material.dart';
import 'package:hci_booking_pt/components/image_rounded_button.dart';
import 'package:hci_booking_pt/components/rounded_button.dart';
import 'package:hci_booking_pt/screens/user_screen/pay_with_momo.dart';
import 'package:hci_booking_pt/theme/colors.dart';

import 'components/user_screen_back_button.dart';

class PaymentMethod extends StatefulWidget {
  @override
  _PaymentMethodState createState() => _PaymentMethodState();
}

class _PaymentMethodState extends State<PaymentMethod> {
  final messageTextController = TextEditingController();

  String messageText;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return UserScreenBackButton(
      title: "PAYMENT",
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Padding(
              padding: EdgeInsets.only(top: 10),
              child: Text(
                "Total Price",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Noto Sans",
                    color: MainColors.kSoftLight),
              )),
          Padding(
              padding: EdgeInsets.only(top: 30, bottom: 30),
              child: Text("\$29",
                  style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Noto Sans",
                      color: MainColors.kSoftLight))),
          Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                  padding: EdgeInsets.only(),
                  child: ImageRoundedButton(
                      text: "PAY WITH ATM CARD",
                      url: "asset/images/logo/debitIcon.png")),
              Padding(
                  padding: EdgeInsets.only(),
                  child: ImageRoundedButton(
                      text: "PAY WITH CREDIT CARD",
                      url: "asset/images/logo/creditIcon.png")),
              Padding(
                padding: EdgeInsets.only(),
                child: ImageRoundedButton(
                    press: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PayWithMomo()));
                    },
                    text: "PAY WITH MOMO",
                    url: "asset/images/logo/momoIcon.png"),
              ),
              Padding(
                  padding: EdgeInsets.only(),
                  child: ImageRoundedButton(
                      text: "PAY WITH AIRPAY",
                      url: "asset/images/logo/airpayIcon.png"))
            ],
          )),
          Padding(
              padding: EdgeInsets.only(),
              child: Align(
                  alignment: Alignment.bottomCenter,
                  child: RoundedButton(
                    text: "Cancel",
                    color: MainColors.kSoftLight,
                    textColor: MainColors.kDark,
                  ))),
        ],
      ),
    );
  }
}
