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
        backgroundColor: Colors.white,
         leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        title: Column(
          children: [
            GestureDetector(
                child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.black,
                      image: DecorationImage(
                          image: NetworkImage(widget.profileImg),
                          fit: BoxFit.cover),
                    )),
                onTap: () {
                  print("you clicked me");
                }),
            Text(
              widget.name,
              style: const TextStyle(fontSize: 16, color: Colors.black),
            )
          ],
        ),
         actions: <Widget>[
    IconButton(
      icon: Icon(
        Icons.video_call_outlined,
        color: Colors.black,
        size: 40,
      ),
      onPressed: () {
        // do something
      },
    )
  ],
      ),
      body: Column(
        children: [
          SingleChildScrollView(
              child: Container(
            height: MediaQuery.of(context).size.height - 200,
            margin: const EdgeInsets.only(bottom: 20.0),
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 10),
            width: MediaQuery.of(context).size.width,
            child: Text('message'),
          )),
          Container(
            padding:
                const EdgeInsets.symmetric(vertical: 8.0, horizontal: 10),
            width: MediaQuery.of(context).size.width,
            child: Text(
              'sdlkfj',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                decoration: TextDecoration.none,
                fontSize: 30,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
