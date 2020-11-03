import 'package:flutter/material.dart';
import 'package:hci_booking_pt/components/rounded_button.dart';
import 'package:hci_booking_pt/screens/user_screen/checkout.dart';
import 'package:hci_booking_pt/screens/user_screen/components/datetime_chooser.dart';
import 'package:hci_booking_pt/screens/user_screen/components/dropdown_chosing_month.dart';
import 'package:hci_booking_pt/screens/user_screen/components/day_in_week.dart';
import 'package:hci_booking_pt/screens/user_screen/components/item_hour.dart';
import 'package:hci_booking_pt/screens/user_screen/components/user_screen_back_button.dart';
import 'package:hci_booking_pt/screens/user_screen/payment_method.dart';
import 'package:hci_booking_pt/theme/colors.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:intl/intl.dart';

import '../../trainer.dart';

class BookingCalenderUser extends StatefulWidget {
  int month = 1;
  DateTime _picked = DateTime.now();
  DateTime _due = DateTime.now().add(Duration(days: 30));

  String get picked => DateFormat("MMMM dd, yyyy").format(_picked);
  String get due => DateFormat("MMMM dd, yyyy").format(_due);

  BookingCalenderUser({Key key}) : super(key: key);

  @override
  _BookingCalenderUserState createState() => _BookingCalenderUserState();
}

class _BookingCalenderUserState extends State<BookingCalenderUser> {
  CalendarController _calendarController;
  @override
  void initState() {
    super.initState();
    _calendarController = CalendarController();
  }

  Widget time_item(String time, double width, {bool isBook = false}) {
    return ItemHour(
      time: time,
      width: width,
      isBook: isBook,
    );
  }

  time_of_day(double width) {
    List a = <Widget>[];
    a.add(time_item("7:00 - 8:30", width, isBook: true));
    a.add(time_item("8:45 - 10:15", width, isBook: false));
    a.add(time_item("10:30 - 12:00", width, isBook: false));
    a.add(time_item("13:00 - 14:30", width, isBook: false));
    a.add(time_item("14:45 - 16:15", width, isBook: false));
    a.add(time_item("16:30 - 18:00", width, isBook: true));
    a.add(time_item("19:00 - 20:30", width, isBook: false));
    a.add(time_item("20:45 - 22:15", width, isBook: false));
    // int i = 6;
    // while (i <= 22) {
    //   bool isBook = false;
    //   String time_str =
    //       (i >= 10) ? i.toString() + ": 00" : "0" + i.toString() + ": 00";
    //   if (i == 12) isBook = true;
    //   a.add(time_item(time_str, width, isBook: isBook));
    // }
    return Wrap(children: a);
  }

  @override
  void dispose() {
    _calendarController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Trainer.startDate = DateFormat("MMMM dd, yyyy").format(widget._picked);
    Trainer.dueDate = DateFormat("MMMM dd, yyyy").format(widget._due);

    int totalPrice = widget.month * Trainer.price;
    Size size = MediaQuery.of(context).size;
    return UserScreenBackButton(
        title: "Booking",
        child: SingleChildScrollView(
            child: Column(
          children: <Widget>[
            Text(
              "Select the weekly meeting time",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            DayInWeek(),
            Divider(
              color: MainColors.kMain,
              height: 10,
            ),
            time_of_day(size.width * 0.27),
            Divider(
              color: MainColors.kMain,
              height: 10,
            ),
            DatePickerDemo(
              notifyParent: setDate,
            ),
            DropdownChosingMonth(notifyParent: refresh),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text("Price per Month:", style: TextStyle(fontSize: 15)),
                  Text(Trainer.price.toString() + "\$",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text("Total:", style: TextStyle(fontSize: 15)),
                  Text(totalPrice.toString() + "\$",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                ],
              ),
            ),
            Padding(
                padding: EdgeInsets.only(),
                child: Align(
                    alignment: Alignment.bottomCenter,
                    child: RoundedButton(
                      text: "Next",
                      color: MainColors.kMain,
                      textColor: MainColors.kLight,
                      press: () {
                        Trainer.totalPrice = totalPrice;
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    CheckOutScreen(totalPrice: totalPrice)));
                      },
                    ))),
            Padding(
                padding: EdgeInsets.only(),
                child: Align(
                    alignment: Alignment.bottomCenter,
                    child: RoundedButton(
                        text: "Cancel",
                        color: MainColors.kSoftLight,
                        textColor: MainColors.kDark,
                        press: () {
                          Navigator.pop(context);
                        }))),
          ],
        )));
  }

  refresh(String selecteMonth) {
    setState(() {
      widget.month = int.parse(selecteMonth);
      widget._due =
          //  widget.picked == null
          //     ? DateTime.now().add(Duration(days: 30 * widget.month))
          widget._picked.add(Duration(days: 30 * widget.month));
      print(widget._due);
    });
  }

  setDate(DateTime picked) {
    setState(() {
      widget._picked = picked;
      widget._due = picked.add(Duration(days: 30 * widget.month));
    });

    // widget.pickedDate = DateFormat("MMMM dd, yyyy").format(picked);
    // widget.dueDate = DateFormat("MMMM dd, yyyy")
    //     .format(picked.add(Duration(days: 30 * widget.month)));
  }
}
