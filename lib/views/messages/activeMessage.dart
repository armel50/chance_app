import 'package:chance_app/constants.dart';
import 'package:chance_app/views/messages/components/messageBody.dart';
import 'package:chance_app/views/user/profile.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class MessageItem {
  int id;
  String text;
  String type;
  String status;
  bool isSender;
  MessageItem(
      {required this.id,
      required this.text,
      required this.type,
      required this.status,
      required this.isSender});
}

class ActiveMessage extends StatefulWidget {
  var profileImg;
  var name;
  ActiveMessage({required this.profileImg, required this.name});

  @override
  State<ActiveMessage> createState() => _ActiveMessageState();
}

class _ActiveMessageState extends State<ActiveMessage> {
  var messagesList = [
    MessageItem(
      id: 1,
      text: 'Hello',
      type: 'text',
      status: 'read',
      isSender: true,
    ),
    MessageItem(
      id: 2,
      text: 'Hi, how are you',
      type: 'text',
      status: 'read',
      isSender: false,
    ),
    MessageItem(
      id: 1,
      text: 'I\'m doing great, can we facetime?',
      type: 'text',
      status: 'read',
      isSender: true,
    ),
    MessageItem(
      id: 1,
      text: 'Not right now, I am busy',
      type: 'text',
      status: 'read',
      isSender: false,
    ),
    MessageItem(
      id: 1,
      text: 'Ok',
      type: 'text',
      status: 'read',
      isSender: true,
    ),
    MessageItem(
      id: 1,
      text: 'Hello 😊',
      type: 'text',
      status: 'read',
      isSender: true,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          titleSpacing: 20,
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back_ios_rounded,
            ),
          ),
          title: Row(
            children: [
              GestureDetector(
                  child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        image: DecorationImage(
                            image: NetworkImage(widget.profileImg),
                            fit: BoxFit.cover),
                      )),
                  onTap: () {
                    print("you clicked me");
                  }),
              SizedBox(
                width: defaultMargin,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.name,
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    'Active 3m ago',
                    style: const TextStyle(
                      fontSize: 12,
                    ),
                  )
                ],
              ),
            ],
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.local_phone,
              ),
              onPressed: () {
                // do something
              },
            ),
            IconButton(
              icon: Icon(
                Icons.videocam,
              ),
              onPressed: () {
                // do something
              },
            )
          ],
        ),
        body: MessageBody(
          messagesList: messagesList,
        ));
  }
}
