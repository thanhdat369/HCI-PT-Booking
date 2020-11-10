import 'package:flutter/material.dart';
import 'package:hci_booking_pt/screens/trainer/my_profile_trainer.dart';
import 'package:hci_booking_pt/theme/colors.dart';

class ScrollMyProfileTrainer extends StatelessWidget {
  final int avatarNumber;
  const ScrollMyProfileTrainer({Key key, this.avatarNumber}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    FocusNode _focusNode = new FocusNode();
    TextEditingController _textEditingController = new TextEditingController();
    Size size = MediaQuery.of(context).size;
    return ListView(scrollDirection: Axis.vertical, children: <Widget>[
      MyIconTrainer(
        icon: Icons.location_on_rounded,
        title: "Ho Chi Minh city, 6",
      ),
      MyIconTrainer(
        icon: Icons.design_services,
        title: "180cm, 82kg",
      ),
      MyIconTrainer(
        icon: Icons.emoji_people,
        title: "112-72-97",
      ),
      Container(
        width: size.width * 0.85,
        margin: EdgeInsets.only(top: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Bio",
                  style: const TextStyle(
                      color: MainColors.kSoftLight,
                      fontWeight: FontWeight.w700,
                      fontFamily: "Noto Sans",
                      fontStyle: FontStyle.normal,
                      fontSize: 18),
                  textAlign: TextAlign.start,
                ),
                Icon(
                  Icons.edit,
                  color: MainColors.kLight,
                  size: 15,
                ),
              ],
            ),
            Text(
              "Getting fit and healthy not have to be difficult, but often times it is. My passion is to help people vhange lives in the somplest and most realistic way possiple. I belive everyone deserves the right to good health and to be happy with themselves inside and out.",
              style: const TextStyle(
                  color: MainColors.kSoftLight,
                  //fontWeight: FontWeight.w700,
                  fontFamily: "Noto Sans",
                  fontStyle: FontStyle.normal,
                  fontSize: 12),
              textAlign: TextAlign.start,
            ),
            Text(
              "",
              style: TextStyle(fontSize: 10),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 3),
              child: Text(
                "Photo",
                style: const TextStyle(
                    color: MainColors.kSoftLight,
                    fontWeight: FontWeight.w700,
                    fontFamily: "Noto Sans",
                    fontStyle: FontStyle.normal,
                    fontSize: 18),
                textAlign: TextAlign.start,
              ),
            ),

            // Expanded(
            //   // child: SingleChildScrollView(
            //   child: ListView(
            //     scrollDirection: Axis.horizontal,
            //     children: [
            //       Container(
            //         width: 100,
            //         height: 100,
            //         decoration: BoxDecoration(
            //             border: Border.all(width: 2, color: MainColors.kLight),
            //             borderRadius: BorderRadius.circular(20)
            //         ),

            //       ),
            //     ],
            //   ),
            // ),

            //*********************** */
            SizedBox(height: 100, child: List_View_Hori()),

            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: Text(
                "Rating and Review",
                style: const TextStyle(
                    color: MainColors.kSoftLight,
                    fontWeight: FontWeight.w700,
                    fontFamily: "Noto Sans",
                    fontStyle: FontStyle.normal,
                    fontSize: 18),
                textAlign: TextAlign.start,
              ),
            ),

            a("Trieu Minh Huy", "18/10/2020"),
            Row(
              children: [
                Icon(Icons.star, color: Colors.yellow, size: 15),
                Icon(Icons.star, color: Colors.yellow, size: 15),
                Icon(Icons.star, color: Colors.yellow, size: 15),
                Icon(Icons.star, color: Colors.yellow, size: 15),
                Icon(Icons.star, color: Colors.yellow, size: 15),
              ],
            ),
            Text(
              "He were excellent. He moved the equipment from my garage to the basement, assembled everything and hauled away the crates and garbage. I would highly recommend he",
              style: const TextStyle(
                  color: MainColors.kSoftLight,
                  //fontWeight: FontWeight.w700,
                  fontFamily: "Noto Sans",
                  fontStyle: FontStyle.normal,
                  fontSize: 12),
              textAlign: TextAlign.start,
            ),
            const Divider(
                color: Colors.white,
                height: 20,
                thickness: 1,
                indent: 0,
                endIndent: 0),

            a("Normal State", "12/10/2020"),
            Row(
              children: [
                Icon(Icons.star, color: Colors.yellow, size: 15),
                Icon(Icons.star, color: Colors.yellow, size: 15),
                Icon(Icons.star, color: Colors.yellow, size: 15),
                Icon(Icons.star, color: Colors.yellow, size: 15),
                Icon(Icons.star, color: Colors.yellow, size: 15),
              ],
            ),
            Text(
              "By committing to personal training, you actually do it, and that is a big difference! I am so much stronger and healthier and feel so much better! A big bonus is I have a new friend in Genevieve!! She is an amazing trainer and good friend!!! I am thankful that Jessica matched me so well, and that Genevieve is such an amazing trainer! Thank you Storm Fitness and Gen!!! You are the absolute BEST!",
              style: const TextStyle(
                  color: MainColors.kSoftLight,
                  //fontWeight: FontWeight.w700,
                  fontFamily: "Noto Sans",
                  fontStyle: FontStyle.normal,
                  fontSize: 12),
              textAlign: TextAlign.start,
            ),
            const Divider(
                color: Colors.white,
                height: 20,
                thickness: 1,
                indent: 0,
                endIndent: 0),

            a("Trieu Minh Huy", "18/10/2020"),
            Row(
              children: [
                Icon(Icons.star, color: Colors.yellow, size: 15),
                Icon(Icons.star, color: Colors.yellow, size: 15),
                Icon(Icons.star, color: Colors.yellow, size: 15),
                Icon(Icons.star, color: Colors.yellow, size: 15),
                Icon(Icons.star, color: Colors.yellow, size: 15),
              ],
            ),
            Text(
              "Getting fit and healthy not have to be difficult, but often times it is. My passion is to help people vhange lives in the somplest and most realistic way possiple. I belive everyone deserves the right to good health and to be happy with themselves inside and out.",
              style: const TextStyle(
                  color: MainColors.kSoftLight,
                  //fontWeight: FontWeight.w700,
                  fontFamily: "Noto Sans",
                  fontStyle: FontStyle.normal,
                  fontSize: 12),
              textAlign: TextAlign.start,
            ),
            const Divider(
                color: Colors.white,
                height: 20,
                thickness: 1,
                indent: 0,
                endIndent: 0),

            a("Trieu Minh Huy", "18/10/2020"),
            Row(
              children: [
                Icon(Icons.star, color: Colors.yellow, size: 15),
                Icon(Icons.star, color: Colors.yellow, size: 15),
                Icon(Icons.star, color: Colors.yellow, size: 15),
                Icon(Icons.star, color: Colors.yellow, size: 15),
                Icon(Icons.star, color: Colors.yellow, size: 15),
              ],
            ),
            Text(
              "Getting fit and healthy not have to be difficult, but often times it is. My passion is to help people vhange lives in the somplest and most realistic way possiple. I belive everyone deserves the right to good health and to be happy with themselves inside and out.",
              style: const TextStyle(
                  color: MainColors.kSoftLight,
                  //fontWeight: FontWeight.w700,
                  fontFamily: "Noto Sans",
                  fontStyle: FontStyle.normal,
                  fontSize: 12),
              textAlign: TextAlign.start,
            ),
            const Divider(
                color: Colors.white,
                height: 20,
                thickness: 1,
                indent: 0,
                endIndent: 0),
          ],
        ),
      ),
    ]);
  }
}

Widget a(String titile, String price) {
  return Container(
      //margin: EdgeInsets.only(top: 20, bottom: 20),
      child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Container(
          child: Text(
        titile,
        style: const TextStyle(
          fontSize: 13,
          fontFamily: "Noto Sans",
        ),
      )),
      Container(
        child: Text(
          price,
          style: const TextStyle(
            fontSize: 13,
            fontFamily: "Noto Sans",
          ),
        ),
      )
    ],
  ));
}
