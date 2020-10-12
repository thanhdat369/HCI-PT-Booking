import 'package:flutter/material.dart';
import 'package:hci_booking_pt/screens/user_screen/profile.dart';
import 'package:hci_booking_pt/screens/user_screen/user_screen_back_button.dart';
import 'package:hci_booking_pt/theme/colors.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
      home: UserScreenBackButton(child: Text("Hello"),title: "Hello",),
    );
  }
}
