import 'package:flutter/material.dart';
import 'package:hci_booking_pt/screens/user_screen/profile_trainer.dart';
import 'package:hci_booking_pt/theme/colors.dart';

class ScrollTrainer extends StatelessWidget {
  const ScrollTrainer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      children: <Widget>[
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
          margin: EdgeInsets.only(left: 25, top: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Bio",
                style: const TextStyle(
                    color: MainColors.kSoftLight,
                    fontWeight: FontWeight.w700,
                    fontFamily: "NotoSans",
                    fontStyle: FontStyle.normal,
                    fontSize: 18),
                    textAlign: TextAlign.start,
              ),
              Text(
                "Getting fit and healthy not have to be difficult, but often times it is. My passion is to help people vhange lives in the somplest and most realistic way possiple. I belive everyone deserves the right to good health and to be happy with themselves inside and out.",
                style: const TextStyle(
                    color: MainColors.kSoftLight,
                    //fontWeight: FontWeight.w700,
                    fontFamily: "NotoSans",
                    fontStyle: FontStyle.normal,
                    fontSize: 12),
                    textAlign: TextAlign.start,
              ),
              Text("", style: TextStyle(fontSize: 10),),
              Padding(
                padding: const EdgeInsets.only(bottom: 3),
                child: Text(
                  "Photo",
                  style: const TextStyle(
                      color: MainColors.kSoftLight,
                      fontWeight: FontWeight.w700,
                      fontFamily: "NotoSans",
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
              SizedBox(
                height: 100,
                child: List_View_Hori() 
              ),

              Padding(
                padding: const EdgeInsets.only(top: 10,bottom: 10),
                child: Text(
                  "Rating and Review",
                  style: const TextStyle(
                      color: MainColors.kSoftLight,
                      fontWeight: FontWeight.w700,
                      fontFamily: "NotoSans",
                      fontStyle: FontStyle.normal,
                      fontSize: 18),
                      textAlign: TextAlign.start,
                ),
              ),
              
              a("Trieu Minh Huy", "18/10/2020"),
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
                Text(
                "Getting fit and healthy not have to be difficult, but often times it is. My passion is to help people vhange lives in the somplest and most realistic way possiple. I belive everyone deserves the right to good health and to be happy with themselves inside and out.",
                style: const TextStyle(
                    color: MainColors.kSoftLight,
                    //fontWeight: FontWeight.w700,
                    fontFamily: "NotoSans",
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
                Text(
                "Getting fit and healthy not have to be difficult, but often times it is. My passion is to help people vhange lives in the somplest and most realistic way possiple. I belive everyone deserves the right to good health and to be happy with themselves inside and out.",
                style: const TextStyle(
                    color: MainColors.kSoftLight,
                    //fontWeight: FontWeight.w700,
                    fontFamily: "NotoSans",
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
                Text(
                "Getting fit and healthy not have to be difficult, but often times it is. My passion is to help people vhange lives in the somplest and most realistic way possiple. I belive everyone deserves the right to good health and to be happy with themselves inside and out.",
                style: const TextStyle(
                    color: MainColors.kSoftLight,
                    //fontWeight: FontWeight.w700,
                    fontFamily: "NotoSans",
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
                Text(
                "Getting fit and healthy not have to be difficult, but often times it is. My passion is to help people vhange lives in the somplest and most realistic way possiple. I belive everyone deserves the right to good health and to be happy with themselves inside and out.",
                style: const TextStyle(
                    color: MainColors.kSoftLight,
                    //fontWeight: FontWeight.w700,
                    fontFamily: "NotoSans",
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
      ]
    );
  }
}

Widget a(String titile, String price) {
    return Container(
        //margin: EdgeInsets.only(top: 20, bottom: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(width: 235, child: Text(titile, style: const TextStyle(fontSize: 13,
              fontFamily: "NotoSans",),)),
            Container(
              width: 100,
              child: Text(price, style: const TextStyle(fontSize: 13,
              fontFamily: "NotoSans",),),
            )
          ],
        ));
  }