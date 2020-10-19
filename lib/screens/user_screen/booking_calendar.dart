import 'package:flutter/material.dart';
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

  Widget time_item(String time, double width) {
    return Container(
      
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(15)),
        border: Border.all(width: 3,color: MainColors.kLight) 
      ),
      alignment: Alignment.center,
      width: width,
      padding: EdgeInsets.all(5),
      margin: EdgeInsets.all(10),
      child: Text(time,style: TextStyle(fontFamily: "ProductSans",fontSize: 20),),
    );
  }

  time_of_day() {
    List a = <Widget>[];
    int i = 8;
    while (i <= 22) {
      String time_str = (i>=10)?i.toString() + ": 00" : "0"+i.toString() + ": 00" ;
      a.add(time_item(time_str,130));
      i = i + 1;
    }
    return Wrap(children: a);
  }
  // @override
  // void dispose() {
  //   _calendarController.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return UserScreenBackButton(
        title: "Booking",
        child: SingleChildScrollView(
            child: Column(
          children: <Widget>[
            TableCalendar(
              startingDayOfWeek: StartingDayOfWeek.monday,
              initialCalendarFormat: CalendarFormat.week,
              headerStyle: HeaderStyle(
                leftChevronIcon:
                    Icon(Icons.arrow_back_ios_outlined, color: Colors.white),
                rightChevronIcon:
                    Icon(Icons.arrow_forward_ios_outlined, color: Colors.white),
                formatButtonVisible: false,
                centerHeaderTitle: true,
              ),
              calendarStyle: CalendarStyle(
                todayColor: Colors.deepOrangeAccent,
              ),
              calendarController: _calendarController,
            ),
            Divider(
              color: MainColors.kMain,
              height: 10,
            ),
            time_of_day(),
          ],
        )));
  }
}
