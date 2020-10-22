import 'package:flutter/material.dart';
import 'package:hci_booking_pt/theme/colors.dart';

class RoundedInputSearch extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  final double height;
  final double width;
  const RoundedInputSearch({
    Key key,
    this.hintText,
    this.icon = Icons.person,
    this.onChanged,
    this.height,
    this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      width: width,
      height: height,
      
      decoration: BoxDecoration(
        //color: MainColors.kSoftLight.withOpacity(0.5),
        border: Border.all(width: 2, color: MainColors.kMain),
        borderRadius: BorderRadius.circular(40)
      ),
      child: TextField(
        onChanged: onChanged,
        cursorColor: MainColors.kMain,
        style: TextStyle(color: MainColors.kLight),
        decoration: InputDecoration(
          //fillColor: MainColors.kLight,
          hintText: hintText,
          hintStyle: TextStyle(fontSize: 15, color: MainColors.kSoftLight),
          border: InputBorder.none,
          icon: Icon(
            icon,
            color: MainColors.kMain,
          ),
          fillColor: MainColors.kLight,
        ),
      ),
    );
  }
}
