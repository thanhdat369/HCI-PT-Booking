import 'package:flutter/material.dart';
import 'package:hci_booking_pt/screens/trainer/components/user_box_newBook_info.dart';

class Client {
  static String name;
  static String startDate;
  static String dueDate;
  static String time;
  static int avatarNumber;

  static bool isSetted;
}

class ClientList {
  static Function press;
  static List<Widget> list = [
    UserBoxNewBookingInfo(
      press: press,
    ),
    const Divider(
        color: Colors.white, height: 10, thickness: 1, indent: 0, endIndent: 0),
    UserBoxNewBookingInfo(
        press: press,
        name: "Le Thanh Dat",
        avatarNumber: 2,
        time: "Tue 10:30 - 12:00"),
    const Divider(
        color: Colors.white, height: 10, thickness: 1, indent: 0, endIndent: 0),
    UserBoxNewBookingInfo(
        press: press,
        name: "Pham Huu Loi",
        avatarNumber: 6,
        time: "Tue 13:00 - 14:30"),
    const Divider(
        color: Colors.white, height: 10, thickness: 1, indent: 0, endIndent: 0),
    UserBoxNewBookingInfo(
        press: press,
        name: "Bui Minh Hieu",
        avatarNumber: 4,
        time: "Tue 14:45 - 16:15"),
    const Divider(
        color: Colors.white, height: 10, thickness: 1, indent: 0, endIndent: 0),
  ];
}
