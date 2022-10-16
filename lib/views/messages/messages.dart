import 'package:chance_app/views/messages/activeMessage.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class Message extends StatefulWidget {
  const Message({Key? key}) : super(key: key);

  @override
  State<Message> createState() => _MessageState();
}

class _MessageState extends State<Message> {
  var messages = [
    {
      'name': 'John Doe',
      'lastMessage':
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
      'initials': 'JD',
      'profileImg':
          'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
    },
    {
      'name': 'Rizky Sabriansyah',
      'lastMessage':
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
      'initials': 'RS',
      'profileImg':
          'https://images.unsplash.com/photo-1664725587354-5738005137f5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
    },
    {
      'name': 'Frank Doe',
      'lastMessage':
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
      'initials': 'FD',
      'profileImg':
          'https://images.unsplash.com/photo-1544348817-5f2cf14b88c8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
    },
    {
      'name': 'Derick Fall',
      'lastMessage':
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
      'initials': 'DF',
      'profileImg':
          'https://images.unsplash.com/photo-1552374196-c4e7ffc6e126?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjZ8fGZhY2V8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60',
    },
    {
      'name': 'Summer Jolie',
      'lastMessage':
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
      'initials': 'SJ',
      'profileImg':
          'https://images.unsplash.com/photo-1544005313-94ddf0286df2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjF8fGZhY2V8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60'
    },
    {
      'name': 'Lavia Doe',
      'lastMessage':
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
      'initials': 'LD',
      'profileImg':
          'https://images.unsplash.com/photo-1549351512-c5e12b11e283?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzJ8fGZhY2V8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60',
    },
    {
      'name': 'Fernado Torres',
      'lastMessage':
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
      'initials': 'FD',
      'profileImg':
          'https://images.unsplash.com/photo-1595956553066-fe24a8c33395?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDl8fGZhY2V8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       
        title: Text(
          'Messages',
          style: TextStyle(
               fontWeight: FontWeight.bold, fontSize: 17),
        ),
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {
                print('pressed');
              },
              icon: Icon(Icons.search, ))
        ],
      ),
      body: SingleChildScrollView(
          child: Container(
        margin: const EdgeInsets.only(bottom: 20.0),
        child: Column(
            children: messages.map((e) {
          var profileImg = e['profileImg'] ?? '';

          return Material(
            child: ListTile(
              leading: CircleAvatar(
                radius: 25,
                backgroundColor:
                    Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
                        .withOpacity(1.0),
                backgroundImage: NetworkImage(profileImg),
              ),
              title: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      e['name'] ?? '',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 17),
                    ),
                  ),
                  Text(
                    e['lastMessage'] ?? "",
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
              trailing: Icon(Icons.arrow_forward_ios_rounded),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ActiveMessage(
                            profileImg: profileImg,
                            name: e['name'] ?? '',
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
