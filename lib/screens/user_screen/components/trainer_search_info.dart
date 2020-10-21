import 'package:flutter/material.dart';
import 'package:hci_booking_pt/components/rounded_button.dart';
import 'package:hci_booking_pt/components/rounded_button_size.dart';
import 'package:hci_booking_pt/theme/colors.dart';

class Trainer_Search_Info extends StatelessWidget {
  const Trainer_Search_Info({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
          padding: EdgeInsets.only(left: 10, right: 10, top: 5),
          child: Row(
            children: [
              Column(
                children: [
                  Container(
                    width: 90,
                    height: 90,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                      image: AssetImage(
                          'asset/images/background/mans.jpg'),
                      fit: BoxFit.fill,
                      ),
                      border: Border.all(width: 2, color: MainColors.kLight),
                      borderRadius: BorderRadius.circular(20)
                    ),
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
                    width: 90,
                    height: 13,
                    child: Text("\$25/month", 
                    style: TextStyle(fontSize: 10, color: Colors.yellow),
                    textAlign: TextAlign.center,),
                  ),
                ],
              ),
              
              Container(
                margin: EdgeInsets.only(left: 10),
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
                    Text("", style: TextStyle(fontSize: 5)),
                    Row(
                      children: [
                        Icon( Icons.star, color: MainColors.kMain, size: 15),
                        Icon( Icons.star, color: MainColors.kMain, size: 15),
                        Icon( Icons.star, color: MainColors.kMain, size: 15),
                        Icon( Icons.star, color: MainColors.kMain, size: 15),
                        Icon( Icons.star, color: MainColors.kMain, size: 15),
                        Text("(6923)", style: TextStyle(fontSize: 12, color: MainColors.kMain),)
                      ],
                    ),
                      RoundedButtonSize(text: "View Detail", width: 200, height: 30),
                    
                    
                    
                  ],
                ),
              ),
            ],
          ),
        );
  }
}
