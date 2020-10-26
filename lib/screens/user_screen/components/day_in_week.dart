import 'package:flutter/material.dart';
import 'package:hci_booking_pt/theme/colors.dart';

class DayInWeek extends StatefulWidget {
  DayInWeek({Key key}) : super(key: key);

  @override
  _DayInWeekState createState() => _DayInWeekState();
}

class _DayInWeekState extends State<DayInWeek> {
  var days = ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"];
  var active_index = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.1,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: days.length,
        itemBuilder: (BuildContext context, int index) {
          return DayInWeekItem(
            text: days[index],
            isActivate: index == active_index,
            width: size.width * 0.101,
            press: () {
              setState(() {
                active_index = index;
              });
            },
          );
        },
      ),
    );
  }
}

class DayInWeekItem extends StatefulWidget {
  String text;
  double width;
  bool isActivate;
  Function press;
  DayInWeekItem(
      {Key key,
      this.width = 40,
      this.text = "Mon",
      this.isActivate = false,
      this.press})
      : super(key: key);

  @override
  _DayInWeekItemState createState() => _DayInWeekItemState();
}

class _DayInWeekItemState extends State<DayInWeekItem> {
  bool isClick = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: this.widget.press,
      child: Container(
        decoration: BoxDecoration(
            color: this.widget.isActivate
                ? MainColors.kMain
                : MainColors.kSoftDark,
            // borderRadius: BorderRadius.all(Radius.circular(100)),
            shape: BoxShape.circle,
            border: Border.all(width: 1, color: MainColors.kSoftLight)),
        alignment: Alignment.center,
        width: widget.width,
        padding: EdgeInsets.all(2),
        margin: EdgeInsets.only(right: 10, bottom: 10, top: 10),
        child: Text(
          this.widget.text,
          style: TextStyle(fontSize: 13),
        ),
      ),
    );
  }
}
