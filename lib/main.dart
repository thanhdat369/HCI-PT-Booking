import 'package:flutter/material.dart';
import 'package:hci_booking_pt/screens/Welcome/components/radio_button.dart';
import 'package:hci_booking_pt/screens/Welcome/login.dart';
import 'package:hci_booking_pt/screens/Welcome/register.dart';
import 'package:hci_booking_pt/screens/user_screen/profile.dart';
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
      Radio_Button(),
    );
    return materialApp;
  }
}
