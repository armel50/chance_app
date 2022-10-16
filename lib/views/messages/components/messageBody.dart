import 'package:chance_app/constants.dart';
import 'package:chance_app/views/messages/activeMessage.dart';
import 'package:chance_app/views/messages/components/messageInputField.dart';
import 'package:flutter/material.dart';

class MessageBody extends StatelessWidget {
  List<MessageItem> messagesList;
  MessageBody({required this.messagesList});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: messagesList.map(
                (e) {
                  return Row(
                    mainAxisAlignment: e.isSender
                        ? MainAxisAlignment.end
                        : MainAxisAlignment.start,
                    children: [
                      Container(
                          margin: const EdgeInsets.only(bottom: 10.0, top: 10),
                          padding: EdgeInsets.symmetric(
                            horizontal: defaultPadding,
                            vertical: defaultPadding,
                          ),
                          decoration: BoxDecoration(
                              color: e.isSender
                                  ? primaryColor
                                  : Color.fromARGB(255, 71, 82, 82),
                              borderRadius: BorderRadius.circular(30)),
                          child: Text(
                            e.text,
                            style: TextStyle(color: AppBarTextColor),
                          ))
                    ],
                  );
                },
              ).toList(),
            ),
          ),
        ),
        MessageInput(),
      ],
    );
  }
}
