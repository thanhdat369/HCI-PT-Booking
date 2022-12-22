import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:hci_booking_pt/theme/colors.dart';
import 'package:intl/intl.dart';

class DatePickerDemo extends StatefulWidget {
  final Function(DateTime picked) notifyParent;

  const DatePickerDemo({Key key, this.notifyParent}) : super(key: key);

  @override
  _DatePickerDemoState createState() => _DatePickerDemoState();
}

class _DatePickerDemoState extends State<DatePickerDemo> {
  /// Which holds the selected date
  /// Defaults to today's date.
  DateTime selectedDate = DateTime.now();

  /// This decides which day will be enabled
  /// This will be called every time while displaying day in calender.
  bool _decideWhichDayToEnable(DateTime day) {
    if ((day.isAfter(DateTime.now().subtract(Duration(days: 1))) &&
        day.isBefore(DateTime.now().add(Duration(days: 10))))) {
      return true;
    }
    return false;
  }

  _selectDate(BuildContext context) {
    return buildMaterialDatePicker(context);
  }

  @override
  Widget build(BuildContext context) {
    var formatter = new DateFormat('dd MMM yyyy');
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text("Start date:",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
          ElevatedButton(
            // color: MainColors.kSoftDark,
            // shape: RoundedRectangleBorder(
            //     // borderRadius: BorderRadius.circular(18.0),
            //     side: BorderSide(color: MainColors.kMain)),
            onPressed: () => _selectDate(context),
            child: Text(
              "${formatter.format(selectedDate)}",
              style: TextStyle(
                  color: MainColors.kLight, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }

  buildCupertinoDatePicker(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext builder) {
          return Container(
            height: MediaQuery.of(context).copyWith().size.height / 3,
            color: Colors.white,
            child: CupertinoDatePicker(
              mode: CupertinoDatePickerMode.date,
              onDateTimeChanged: (picked) {
                if (picked != null && picked != selectedDate) {
                  setState(() {
                    selectedDate = picked;
                  });
                }
              },
              initialDateTime: selectedDate,
              minimumYear: 2000,
              maximumYear: 2021,
            ),
          );
        });
  }

  buildMaterialDatePicker(BuildContext context) async {
    final DateTime picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2025),
      initialEntryMode: DatePickerEntryMode.calendar,
      initialDatePickerMode: DatePickerMode.day,
      selectableDayPredicate: _decideWhichDayToEnable,
      helpText: 'Select booking date',
      cancelText: 'Not now',
      confirmText: 'Choose',
      errorFormatText: 'Enter valid date',
      errorInvalidText: 'Enter date in valid range',
      fieldLabelText: 'Booking date',
      fieldHintText: 'Month/Date/Year',
      builder: (context, child) {
        return Theme(
          data: ThemeData.dark(),
          child: child,
        );
      },
    );
    if (picked != null && picked != selectedDate)
      setState(() {
        widget.notifyParent(picked);
        selectedDate = picked;
      });
  }
}
