import 'package:flutter/material.dart';
import 'package:hci_booking_pt/components/icon_rounded_button_size.dart';
import 'package:hci_booking_pt/components/rounded_button_size.dart';
import 'package:hci_booking_pt/screens/trainer/client_detail_screen.dart';
import 'package:hci_booking_pt/screens/trainer/components/client.dart';
import 'package:hci_booking_pt/screens/trainer/trainer_chatting_screen.dart';
import 'package:hci_booking_pt/screens/user_screen/call_video.dart';
import 'package:hci_booking_pt/screens/user_screen/profile_trainer.dart';
import 'package:hci_booking_pt/theme/colors.dart';

class UserBoxMyClientItem extends StatelessWidget {
  final String name;

  final String time;

  final int avatarNumber;
  final String startDate;
  final String dueDate;
  final bool isSetted;

  const UserBoxMyClientItem(
      {Key key,
      this.name = "Trieu Minh Huy",
      this.time = "Tue 8:45 - 10:15",
      this.avatarNumber = 1,
      this.startDate = "19 November, 2020",
      this.dueDate = "18 December, 2020",
      this.isSetted = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      height: 120,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('asset/images/trainerAvatar/' +
                      avatarNumber.toString() +
                      '.jpg'),
                  fit: BoxFit.fill,
                ),
                border: Border.all(width: 2, color: MainColors.kLight),
                borderRadius: BorderRadius.circular(20)),
          ),
          Expanded(
            child: Container(
              height: 120,
              margin: EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    name,
                    style: const TextStyle(
                        color: const Color(0xffffffff),
                        fontWeight: FontWeight.w700,
                        fontFamily: "Noto Sans",
                        fontStyle: FontStyle.normal,
                        fontSize: 18),
                  ),
                  Container(
                    child: Text(time,
                        style: const TextStyle(
                            color: MainColors.kLight,
                            fontFamily: "Noto Sans",
                            fontStyle: FontStyle.normal,
                            fontSize: 12)),
                  ),
                  Container(
                    child: Text(startDate + " - " + dueDate,
                        style: const TextStyle(
                            color: MainColors.kLight,
                            fontFamily: "Noto Sans",
                            fontStyle: FontStyle.normal,
                            fontSize: 12)),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RoundedButtonSize(
                          text: "Send Message",
                          fontsize: 11,
                          width: 115,
                          height: 30,
                          press: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        TrainerChatScreen(name: name)));
                          }),
                      RoundedButtonSize(
                          text: "Detail",
                          fontsize: 11,
                          width: 115,
                          height: 30,
                          press: () {
                            setInfo();
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ClientDetailScreen(
                                          isSetted: isSetted,
                                        )));
                          }),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  setInfo() {
    Client.name = name;
    Client.avatarNumber = avatarNumber;
    Client.dueDate = dueDate;
    Client.startDate = startDate;
    Client.time = time;
    Client.isSetted = isSetted;
  }
}
