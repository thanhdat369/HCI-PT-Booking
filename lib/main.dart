import 'package:flutter/material.dart';
import 'package:hci_booking_pt/screens/Welcome/get_started.dart';
import 'package:hci_booking_pt/screens/Welcome/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.red),
      home: LoginScreen(), 
    );
  }
}
