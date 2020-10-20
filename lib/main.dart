import 'package:flutter/material.dart';
import 'package:hci_booking_pt/screens/Welcome/components/list_view_demo.dart';
import 'package:hci_booking_pt/screens/user_screen/checkout.dart';
import 'package:hci_booking_pt/screens/user_screen/components/trainer_search_info.dart';
import 'package:hci_booking_pt/screens/user_screen/components/user_screen_back_button.dart';
import 'package:hci_booking_pt/screens/Welcome/components/radio_button.dart';
import 'package:hci_booking_pt/screens/Welcome/login.dart';

import 'package:hci_booking_pt/screens/Welcome/register.dart';
import 'package:hci_booking_pt/screens/user_screen/profile.dart';
import 'package:hci_booking_pt/screens/user_screen/user_screen.dart';
import 'package:hci_booking_pt/theme/colors.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var materialApp = MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          textTheme: TextTheme(
            bodyText1: TextStyle(),
            bodyText2: TextStyle(),
          ).apply(
            bodyColor: MainColors.kLight,
            displayColor: Colors.blue,
            fontFamily: "ProductSans",
          ),
          primarySwatch: Colors.red),
      home: 
      //LoginScreen(),
      //RegisterScreen(),
      CheckOutScreen(),
      //Profile(),
      //UserScreen(),
      //Trainer_Search_Info(),
      //List_View_Demo(),
      
    );
    return materialApp;
  }
}
