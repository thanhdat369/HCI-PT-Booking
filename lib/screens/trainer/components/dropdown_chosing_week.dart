import 'package:flutter/material.dart';
import 'package:hci_booking_pt/screens/trainer/components/client.dart';
import 'package:hci_booking_pt/theme/colors.dart';

class DropdownChosingWeek extends StatefulWidget {
  final Function(String month) notifyParent;

  DropdownChosingWeek({Key key, @required this.notifyParent}) : super(key: key);

  @override
  _DropdownChosingWeekState createState() => _DropdownChosingWeekState();
}

class _DropdownChosingWeekState extends State<DropdownChosingWeek> {
  final count = ["Week 1/4", "Week 2/4", "Week 3/4", "Week 4/4"];
  String selectedMonth;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 35,
        width: MediaQuery.of(context).size.width * 0.9,
        decoration: BoxDecoration(border: Border.all(color: MainColors.kMain)),
        padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
        child: Theme(
          data: Theme.of(context).copyWith(
            canvasColor: MainColors.kSoftDark,
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton(
              style: TextStyle(color: Colors.black),
              value: selectedMonth,
              onChanged: (String) {
                // widget.notifyParent(String);
                setState(() {
                  selectedMonth = String;
                });
              },
              hint: Text(
                "Week 1/4",
                style: TextStyle(color: MainColors.kLight),
              ),
              items: count.map((String user) {
                return DropdownMenuItem<String>(
                  value: user,
                  child: Row(
                    children: <Widget>[
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        user,
                        style: TextStyle(color: MainColors.kLight),
                      ),
                    ],
                  ),
                );
              }).toList(),
            ),
          ),
        ));
  }
}
