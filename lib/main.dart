import 'package:flutter/material.dart';
import 'package:hci_booking_pt/screens/user_screen/user_detail_exercise_video.dart';
import 'package:hci_booking_pt/screens/welcome/login.dart';
import 'package:hci_booking_pt/screens/welcome/login.dart';
import 'package:hci_booking_pt/screens/welcome/register.dart';
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
          unselectedWidgetColor: Colors.white,
          textTheme: TextTheme(
            bodyText1: TextStyle(),
            bodyText2: TextStyle(),
          ).apply(
            bodyColor: MainColors.kLight,
            displayColor: Colors.blue,
            fontFamily: "ProductSans",
          ),
          primarySwatch: Colors.red),
      home: LoginScreen(),
    );
    
    //Dimniss auto focus
    var myApp = GestureDetector(
      child: materialApp,
      onTap: () {
        // FocusScopeNode currentFocus = FocusScope.of(context);
        // currentFocus.requestFocus(new FocusNode());
        WidgetsBinding.instance.focusManager.primaryFocus?.unfocus();
        // if (!currentFocus.hasPrimaryFocus) {
        //   currentFocus.unfocus();
        // }
      },
    );

    return myApp;
  }
}
