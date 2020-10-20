import 'package:flutter/material.dart';
import 'package:hci_booking_pt/constants.dart';
import 'package:cloud_firestore/cloud_firestore.dart';




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
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: null,
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.close),
              onPressed: () async {

                Navigator.pop(context);
              }),
        ],
        title: Text('MICHAEL JORDAN'),
        backgroundColor: Colors.black26,
      ),
      body: SafeArea(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            MessagesStream(),
            Container(
              decoration: kMessageContainerDecoration,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.black26,
                          border: OutlineInputBorder(),
                          labelStyle: TextStyle(
                              color: Colors.red,
                              fontSize: 24.0
                          ),
                          hintText: 'Say something...',
                        hintStyle: TextStyle(fontSize: 20.0, color: Colors.white)

                      ),
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
                    child: Text(
                      'SEND',
                      style: kSendButtonTextStyle,
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
    return StreamBuilder<QuerySnapshot>(

      builder: (context, snapshot) {
        if (!snapshot.hasData) {

          final messages =[1];


          List<MessageBubble> bubbles = [
            MessageBubble(sender: 'Hieu dep trai', text: 'Hey Mi', isMe: true),
            MessageBubble(sender: 'Not me', text: 'What\'s new?', isMe: false)
          ];

          List<MessageBubble> messageWidgets = messages.map((message) {
            final sender = bubbles[0].sender.toString();
            if(bubbles[0].isMe == true) {
              return MessageBubble(
                sender: bubbles[0].sender.toString(),
                text: bubbles[0].text,
                isMe: bubbles[0].isMe,
              );
            }else{
              return MessageBubble(
                sender: bubbles[1].sender.toString(),
                text: bubbles[1].text,
                isMe: bubbles[1].isMe,
              );
            }

          }).toList();
          return Expanded(
            child: ListView(
              reverse: true,
              children: messageWidgets,
            ),
          );
        }

        return Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}

class MessageBubble extends StatelessWidget {
  final String sender;
  final String text;
  final bool isMe;
  MessageBubble({this.sender, this.text, this.isMe});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),

      child: Column(
        crossAxisAlignment:
        isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "$sender",
            style: TextStyle(fontSize: 12, color: Colors.black54),
          ),
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
            color: isMe ? Colors.lightBlueAccent : Colors.white,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Text(
                "$text",
                style: TextStyle(
                  color: Colors.white,
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