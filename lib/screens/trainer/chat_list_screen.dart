import 'package:flutter/material.dart';
import 'package:hci_booking_pt/screens/trainer/components/user_box_newBook_info.dart';
import 'package:hci_booking_pt/screens/trainer/trainer_chatting_screen.dart';
import 'package:hci_booking_pt/screens/user_screen/components/user_screen_back_button.dart';
import 'package:hci_booking_pt/theme/colors.dart';
import 'package:hci_booking_pt/trainer.dart';

class ChatListScreen extends StatefulWidget {
  @override
  _ChatListScreenState createState() => _ChatListScreenState();
}

class _ChatListScreenState extends State<ChatListScreen> {
  final messageTextController = TextEditingController();

  String messageText;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    TextEditingController textEditingController = new TextEditingController();

    return UserScreenBackButton(
        title: "Messages",
        child: Container(
          height: size.height,
          child: Column(
            children: [
              Expanded(
                  child: ListView(
                children: [
                  ChatItem(),
                  Divider(
                    height: 15,
                  ),
                  ChatItem(
                    avatarNumber: 2,
                    name: "Le Thanh Dat",
                    lastMessage: "That good, keep it for you",
                    time: "10:28 pm",
                  ),
                  Divider(
                    height: 15,
                  ),
                  ChatItem(
                    avatarNumber: 3,
                    name: "Bui Minh Hieu",
                    lastMessage: "That good, keep it for you",
                    time: "10:28 pm",
                  ),
                  Divider(
                    height: 15,
                  ),
                  ChatItem(
                    avatarNumber: 4,
                    name: "Pham Huu Loi",
                    lastMessage: "That good, keep it for you",
                    time: "10:28 pm",
                  ),
                  Divider(
                    height: 15,
                  ),
                  ChatItem(
                    avatarNumber: 5,
                    name: "Mai Tuong Van",
                    lastMessage: "That Ok, keep it for you",
                    time: "10:28 pm",
                  ),
                  Divider(
                    height: 15,
                  ),
                  ChatItem(
                    avatarNumber: 6,
                    name: "Ngo Van Hung",
                    lastMessage: "That good, keep it for you",
                    time: "10:28 pm",
                  ),
                  Divider(
                    height: 15,
                  ),
                  ChatItem(
                    avatarNumber: 7,
                    name: "Mai Si Van",
                    lastMessage: "That good, keep it for you",
                    time: "10:28 pm",
                  ),
                  Divider(
                    height: 15,
                  ),
                  ChatItem(
                    avatarNumber: 8,
                    name: "Le Van Nam",
                    lastMessage: "That good, keep it for you",
                    time: "10:28 pm",
                  ),
                ],
              ))
            ],
          ),
        ));
  }
}

// Widget bookingListView = ();

// Widget chatItem(
//     int avatarNumber, String name, String lastMessage, String time) {
//   return
// }

class ChatItem extends StatelessWidget {
  final String name;

  final String time;

  final int avatarNumber;
  final String lastMessage;

  const ChatItem(
      {Key key,
      this.name = "Trieu Minh Huy",
      this.time = "10:30 pm",
      this.avatarNumber = 1,
      this.lastMessage = "Great Video, going on it"})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Row(
          children: [
            Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('asset/images/trainerAvatar/' +
                        avatarNumber.toString() +
                        '.jpg'),
                    fit: BoxFit.fill,
                  ),
                  borderRadius: BorderRadius.circular(100)),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => TrainerChatScreen(name: name)));
              },
              child: Container(
                padding: EdgeInsets.only(left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: const TextStyle(
                          color: MainColors.kLight,
                          fontWeight: FontWeight.w700,
                          fontFamily: "Noto Sans",
                          fontStyle: FontStyle.normal,
                          fontSize: 16),
                    ),
                    Text(
                      lastMessage + " • " + time,
                      style: const TextStyle(
                          color: MainColors.kSoftLight,
                          fontFamily: "tahoma",
                          fontStyle: FontStyle.normal,
                          fontSize: 13),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
