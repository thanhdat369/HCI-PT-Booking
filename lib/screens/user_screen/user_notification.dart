import 'package:flutter/material.dart';
import 'package:hci_booking_pt/components/my_circleavt.dart';
import 'package:hci_booking_pt/theme/colors.dart';

class UserNotification extends StatelessWidget {
  const UserNotification({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text("New"),
            Text(
              "Mark all read",
              style: TextStyle(color: MainColors.kMain),
            ),
          ],
        ),
      ),
      Expanded(
        child: ListView(
          children: [
            NotificationItem(isRead: false),
            NotificationItem(isRead: false),
            NotificationItem(),
            NotificationItem(),
            NotificationItem(),
            NotificationItem(),
          ],
        ),
      )
    ]);
  }
}

class NotificationItem extends StatelessWidget {
  bool isRead;
  NotificationItem({Key key, this.isRead = true}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(5),
      margin: EdgeInsets.only(bottom: 5),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                  padding: EdgeInsets.only(right: 10, left: 10),
                  child: MyCircleAvatar(radius: size.width * 0.075)),
              Container(
                margin: EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Text(
                        "Michel Jordan",
                        style: TextStyle(
                            color:
                                isRead ? MainColors.kLight : MainColors.kMain,
                            fontWeight: FontWeight.w700,
                            fontSize: 18),
                      ),
                    ), //title
                    Container(
                        width: size.width * 0.8 - 100,
                        child: Text(
                            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a",
                            maxLines: 3,
                            style: TextStyle(
                                letterSpacing: 1.0,
                                fontFamily: "Product Sans",
                                fontSize: 14),
                            overflow: TextOverflow.clip)), //description
                  ],
                ),
              ),
              Text(
                "1 m",
                style: TextStyle(
                    color: isRead ? MainColors.kLight : MainColors.kMain,
                    fontWeight: FontWeight.w700,
                    fontSize: 12),
              ),
            ],
          ),
          Divider(
            color: MainColors.kLight,
            thickness: 0.5,
          )
        ],
      ),
    );
  }
}
