import 'dart:ui';

import 'package:chance_app/views/messages/activeMessage.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class Chat {
  int id;
  String name;
  String lastMessage;
  String initials;
  bool isActive;
  String time;
  String profileImg;

  Chat({
    required this.id,
    required this.name,
    required this.lastMessage,
    required this.initials,
    required this.isActive,
    required this.time,
    required this.profileImg,
  });
}

class Message extends StatefulWidget {
  const Message({Key? key}) : super(key: key);

  @override
  State<Message> createState() => _MessageState();
}

class _MessageState extends State<Message> {
  var chats = [
    Chat(
      id: 1,
      name: 'John Doe',
      lastMessage:
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
      initials: 'JD',
      isActive: true,
      time: '8m ago',
      profileImg:
          'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
    ),
    Chat(
      id: 2,
      name: 'Rizky Sabriansyah',
      lastMessage:
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
      initials: 'RS',
      isActive: false,
      time: '1d ago',
      profileImg:
          'https://images.unsplash.com/photo-1664725587354-5738005137f5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
    ),
    Chat(
      id: 3,
      name: 'Frank Doe',
      lastMessage:
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
      initials: 'FD',
      isActive: false,
      time: '1d ago',
      profileImg:
          'https://images.unsplash.com/photo-1544348817-5f2cf14b88c8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
    ),
    Chat(
      id: 4,
      name: 'Derick Fall',
      lastMessage:
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
      initials: 'DF',
      isActive: true,
      time: '5d ago',
      profileImg:
          'https://images.unsplash.com/photo-1552374196-c4e7ffc6e126?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjZ8fGZhY2V8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60',
    ),
    Chat(
        id: 5,
        name: 'Summer Jolie',
        lastMessage:
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
        initials: 'SJ',
        isActive: false,
        time: '6d ago',
        profileImg:
            'https://images.unsplash.com/photo-1544005313-94ddf0286df2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjF8fGZhY2V8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60'),
    Chat(
      id: 6,
      name: 'Lavia Doe',
      lastMessage:
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
      initials: 'LD',
      isActive: true,
      time: '1w ago',
      profileImg:
          'https://images.unsplash.com/photo-1549351512-c5e12b11e283?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzJ8fGZhY2V8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60',
    ),
    Chat(
      id: 7,
      name: 'Fernado Torres',
      lastMessage:
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
      initials: 'FD',
      isActive: false,
      time: '2w ago',
      profileImg:
          'https://images.unsplash.com/photo-1595956553066-fe24a8c33395?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDl8fGZhY2V8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Messages',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
        ),
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios_rounded,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {
                print('pressed');
              },
              icon: Icon(
                Icons.search,
              ))
        ],
      ),
      body: SingleChildScrollView(
          child: Container(
        margin: const EdgeInsets.only(bottom: 20.0),
        child: Column(
            children: chats.map((e) {
          return Container(
            height: 80,
            child: ListTile(
              leading: Stack(children: [
                e.profileImg != ''
                    ? CircleAvatar(
                        radius: 25,
                        backgroundColor: Color(
                                (math.Random().nextDouble() * 0xFFFFFF).toInt())
                            .withOpacity(1.0),
                        backgroundImage: NetworkImage(e.profileImg),
                      )
                    : CircleAvatar(
                        radius: 25,
                        backgroundColor: Color(
                                (math.Random().nextDouble() * 0xFFFFFF).toInt())
                            .withOpacity(1.0),
                        child: Text(e.initials),
                      ),
                if (e.isActive)
                  Positioned(
                      right: 0,
                      bottom: 7,
                      child: Container(
                        height: 12,
                        width: 12,
                        decoration: BoxDecoration(
                            color: Colors.green,
                            shape: BoxShape.circle,
                            border:
                                Border.all(color: Colors.black, width: 0.5)),
                      )),
              ]),
              title: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin:const EdgeInsets.only(bottom: 5.0) ,
                    child: Text(
                      e.name,
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 17),
                    ),
                  ),
                  Text(
                    e.lastMessage,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(e.time),
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                  ),
                ],
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ActiveMessage(
                            profileImg: e.profileImg,
                            name: e.name,
                          )),
                );
              },
            ),
          );
        }).toList()),
      )),
    );
  }
}
