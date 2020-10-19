import 'package:flutter/material.dart';
import 'package:hci_booking_pt/theme/colors.dart';

class RoundedInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  const RoundedInputField({
    Key key,
    this.hintText,
    this.icon = Icons.person,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      width: size.width * 0.85,
      decoration: BoxDecoration(
        color: MainColors.kSoftLight.withOpacity(0.5),
        borderRadius: BorderRadius.all(Radius.circular(4)),
      ),
      child: TextField(
        onChanged: onChanged,
        cursorColor: MainColors.kMain,
        decoration: InputDecoration(
          fillColor: MainColors.kLight,
          icon: Icon(
            icon,
            color: MainColors.kMain,
          ),
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
