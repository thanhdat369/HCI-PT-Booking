import 'package:flutter/material.dart';
import 'package:hci_booking_pt/constants.dart';
import 'package:hci_booking_pt/screens/user_screen/components/user_screen_back_button.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final messageTextController = TextEditingController();

  String messageText;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return UserScreenBackButton(
      title: "Michel Jordan",
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            MessagesStream(),
            Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                          fillColor: Colors.red,
                          hintText: "Say something...",
                          hintStyle: TextStyle(color: Colors.white70),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: Colors.red, width: 2.0),
                            borderRadius: BorderRadius.circular(25.0),
                          )),
                    ),
                  ),
                  FlatButton(
                    onPressed: () {
                      messageTextController.clear();
                      // _cloudStore.collection("messages").add({
                      //   'text': messageText,
                      //   'sender': loggedInUser.email,
                      //   'dateCreated': FieldValue.serverTimestamp()
                      // });
                    },
                    child: RichText(
                      text: TextSpan(style: kSendButtonTextStyle, children: [
                        WidgetSpan(
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 2.0),
                            child: Icon(Icons.arrow_forward,
                                color: Colors.red, size: 40),
                          ),
                        ),
                      ]),
                      // 'SEND',
                      //
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MessagesStream extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<MessageBubble> bubbles = [
      MessageBubble(
          sender: 'Not me',
          text:
              "Not really. It is pretty easy. The computer does all the calculations for you.",
          isMe: true),
      MessageBubble(
          sender: 'Hieu dep trai',
          text: 'Nice too meet u too. Do u like your job?',
          isMe: false),
      MessageBubble(
          sender: 'Not me', text: "Hello. Nice to meet u", isMe: true),
    ];

    bubbles.forEach((bubble) {
      print(bubble);
    });

    return Expanded(
      child: ListView(
        reverse: true,
        children: bubbles,
      ),
    );
  }
}

class MessageBubble extends StatelessWidget {
  final String sender;
  final String text;
  final bool isMe;
  DateTime date;

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
              alignment: Alignment.center,
              child: Text(
                "Monday, 10:40 A.M",
                style: TextStyle(
                  color: Colors.red,
                ),
              )),
          Material(
            borderRadius: isMe
                ? BorderRadius.only(
                    topLeft: Radius.circular(30),
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  )
                : BorderRadius.only(
                    topRight: Radius.circular(30),
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
            elevation: 5,
            color: isMe ? Colors.red : Colors.white,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Text(
                "$text",
                style: TextStyle(
                  color: isMe ? Colors.white : Colors.red,
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
