import 'package:chance_app/views/messages/components/messageBody.dart';
import 'package:chance_app/views/user/profile.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class ActiveMessage extends StatefulWidget {
  var profileImg;
  var name;
  ActiveMessage({required this.profileImg, required this.name});

  @override
  State<ActiveMessage> createState() => _ActiveMessageState();
}

class _ActiveMessageState extends State<ActiveMessage> {
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
                SizedBox(width: 10,)
           , Column(
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
      body: MessageBody()
    );
  }
}
