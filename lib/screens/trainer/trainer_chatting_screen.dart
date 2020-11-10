import 'package:flutter/material.dart';
import 'package:hci_booking_pt/constants.dart';
import 'package:hci_booking_pt/screens/user_screen/components/user_screen_back_button.dart';
import 'package:hci_booking_pt/theme/colors.dart';
import 'package:hci_booking_pt/trainer.dart';
import 'package:intl/intl.dart';

class TrainerChatScreen extends StatefulWidget {
  final String name;

  const TrainerChatScreen({Key key, this.name}) : super(key: key);
  @override
  _TrainerChatScreenState createState() => _TrainerChatScreenState();
}

class _TrainerChatScreenState extends State<TrainerChatScreen> {
  final messageTextController = TextEditingController();
  List<MessageBubble> bubbles = [
    MessageBubble(
      sender: 'Not me',
      text: "Hello. Nice to meet u",
      isMe: true,
      date: "Monday, 10:25 A.M",
    ),
    MessageBubble(
        sender: 'Hieu dep trai',
        text: 'Nice too meet u too. Do u like your job?',
        isMe: false,
        date: "Monday, 10:27 A.M"),
    MessageBubble(
      sender: 'Not me',
      text: "Not really. It is pretty easy.",
      isMe: true,
      date: "Monday, 10:25 A.M",
    )
  ];

  String messageText;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController textEditingController = new TextEditingController();

    return UserScreenBackButton(
      title: widget.name,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          MessagesStream(bubbles: bubbles),
          Container(
              child: SingleChildScrollView(
                  child: Padding(
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: TextField(
                    controller: textEditingController,
                    style: TextStyle(color: MainColors.kLight),
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: MainColors.kMain, width: 2.0),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        fillColor: MainColors.kMain,
                        hintText: "Say something...",
                        hintStyle: TextStyle(color: Colors.white70),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: MainColors.kMain, width: 2.0),
                          borderRadius: BorderRadius.circular(10.0),
                        )),
                  ),
                ),
                InkWell(
                    onTap: () {
                      setState(() {
                        if (textEditingController.text.isNotEmpty)
                          bubbles.add(MessageBubble(
                            sender: 'me',
                            text: textEditingController.text,
                            isMe: true,
                            date: DateFormat("EEEEE, hh:mm a")
                                .format(DateTime.now()),
                          ));
                      });
                    },
                    child: Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Icon(Icons.arrow_forward,
                          color: MainColors.kMain, size: 40),
                    )),
              ],
            ),
          ))),
        ],
      ),
    );
  }
}

class MessagesStream extends StatelessWidget {
  final List<MessageBubble> bubbles;

  const MessagesStream({Key key, this.bubbles}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        reverse: true,
        children: bubbles.reversed.toList(),
        padding: EdgeInsets.only(bottom: 10),
      ),
    );
  }
}

class MessageBubble extends StatelessWidget {
  final String sender;
  final String text;
  final bool isMe;
  String date;

  MessageBubble({this.sender, this.text, this.isMe, this.date});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment:
            isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: <Widget>[
          Container(
              margin: EdgeInsets.only(bottom: 10),
              alignment: Alignment.center,
              child: Text(
                date,
                style: TextStyle(
                  color: MainColors.kMain,
                ),
              )),
          Material(
            borderRadius: isMe
                ? BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  )
                : BorderRadius.only(
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
            elevation: 5,
            color: isMe ? MainColors.kMain : Colors.white,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
              child: Text(
                "$text",
                style: TextStyle(
                  color: isMe ? Colors.white : MainColors.kMain,
                  fontSize: 15,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
