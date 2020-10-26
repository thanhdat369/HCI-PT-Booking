import 'package:flutter/material.dart';
import 'package:hci_booking_pt/components/rounded_button.dart';
import 'package:hci_booking_pt/screens/user_screen/components/datetime_chooser.dart';
import 'package:hci_booking_pt/screens/user_screen/components/dropdown_chosing_month.dart';
import 'package:hci_booking_pt/screens/user_screen/components/day_in_week.dart';
import 'package:hci_booking_pt/screens/user_screen/components/item_hour.dart';
import 'package:hci_booking_pt/screens/user_screen/components/user_screen_back_button.dart';
import 'package:hci_booking_pt/theme/colors.dart';
import 'package:table_calendar/table_calendar.dart';

class BookingCalenderUser extends StatefulWidget {
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
    int i = 6;
    while (i <= 22) {
      bool isBook = false;
      String time_str =
          (i >= 10) ? i.toString() + ": 00" : "0" + i.toString() + ": 00";
      if (i == 12) isBook = true;
      a.add(time_item(time_str, width, isBook: isBook));
      i = i + 2;
    }
    return Wrap(children: a);
  }

  @override
  void dispose() {
    _calendarController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return UserScreenBackButton(
        title: "Booking",
        child: SingleChildScrollView(
            child: Column(
          children: <Widget>[
            Text("Select the weekly meeting time",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
            DayInWeek(),
            Divider(
              color: MainColors.kMain,
              height: 10,
            ),
            time_of_day(size.width * 0.25),
            Divider(
              color: MainColors.kMain,
              height: 10,
            ),
            DatePickerDemo(),
            DropdownChosingMonth(),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text("Price per Month:", style: TextStyle(fontSize: 15)),
                  Text("29\$",
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
                  Text("29\$",
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
                    ))),
            Padding(
                padding: EdgeInsets.only(),
                child: Align(
                    alignment: Alignment.bottomCenter,
                    child: RoundedButton(
                      text: "Cancel",
                      color: MainColors.kSoftLight,
                      textColor: MainColors.kDark,
                    ))),
          ],
        )));
  }
}
