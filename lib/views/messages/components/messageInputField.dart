import 'package:chance_app/constants.dart';
import 'package:flutter/material.dart';

class MessageInput extends StatelessWidget {
  const MessageInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 10,
                    blurRadius: 32,
                    offset: Offset(3, 3),)
        ],
      ),
      child: SafeArea(
        child: Row(
          children: [
                IconButton(
              onPressed: () {
                print('pressed');
              },
              icon: Icon(Icons.add, color: primaryColor),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: defaultPadding,
                ),
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Row(
                  children: [
                    Expanded(
                      
                      child: TextField(
                        cursorColor: AppBarTextColor,
                        
                        // maxLines: 4,
                        decoration: InputDecoration(
                          hintStyle: TextStyle(color: AppBarTextColor),
                          hintText: "Type message",
                          border: InputBorder.none,
                        ),
                        style: TextStyle(color: AppBarTextColor),
                      ),
                    ),
                   
                  ],
                ),
              ),
            ),
                               

            IconButton(
              onPressed: () {
                print('pressed');
              },
              icon: Icon(Icons.mic, color: primaryColor),
            ),
            IconButton(
              onPressed: () {
                print('pressed');
              },
              icon: Icon(Icons.camera_alt_outlined, color: primaryColor),
            ),
          ],
        ),
      ),
    );
  }
}
