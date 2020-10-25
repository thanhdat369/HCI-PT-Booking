import 'package:flutter/material.dart';
import 'package:hci_booking_pt/theme/colors.dart';

class ItemHour extends StatefulWidget {
  String time;
  double width;
  bool isBook;
  ItemHour({Key key, this.time = "9:00", this.width = 100, this.isBook = false})
      : super(key: key);

  @override
  _ItemHourState createState() => _ItemHourState();
}

class _ItemHourState extends State<ItemHour> {
  bool isClick = false;
  @override
  Widget build(BuildContext context) {
    var color_background = null;
    var text_style = TextStyle(color: MainColors.kSoftLight, fontSize: 16);
    if (this.isClick) {
      color_background = MainColors.kMain;
      text_style = TextStyle(color: MainColors.kLight,fontWeight: FontWeight.w900, fontSize: 16);
    }
    if (this.widget.isBook) {
      color_background = MainColors.kLight;
      text_style = TextStyle(color: MainColors.kSoftLight, fontSize: 16);
    }

    return GestureDetector(
      onTap: () {
        setState(() {
          this.isClick = !isClick;
        });
      },
      child: Container(
        decoration: BoxDecoration(
            color: color_background,
            borderRadius: BorderRadius.all(Radius.circular(15)),
            border: Border.all(width: 3, color: MainColors.kSoftLight)),
        alignment: Alignment.center,
        width: widget.width,
        padding: EdgeInsets.all(5),
        margin: EdgeInsets.only(right: 10, bottom: 10, top: 10),
        child: Text(
          widget.time,
          style: text_style,
        ),
      ),
    );
  }
}
