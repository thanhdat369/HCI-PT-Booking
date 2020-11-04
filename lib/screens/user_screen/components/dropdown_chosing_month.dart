import 'package:flutter/material.dart';
import 'package:hci_booking_pt/theme/colors.dart';

class DropdownChosingMonth extends StatefulWidget {
  final Function(String month) notifyParent;

  DropdownChosingMonth({Key key, @required this.notifyParent})
      : super(key: key);

  @override
  _DropdownChosingMonthState createState() => _DropdownChosingMonthState();
}

class _DropdownChosingMonthState extends State<DropdownChosingMonth> {
  final count = ["1", "2", "3", "4", "5", "6"];
  String selectedMonth;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text("How many month you want to rent?",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
          Container(
              decoration:
                  BoxDecoration(border: Border.all(color: MainColors.kMain)),
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
                      widget.notifyParent(String);
                      setState(() {
                        selectedMonth = String;
                      });
                    },
                    hint: Text(
                      "1",
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
              )),
        ],
      ),
    );
  }
}
