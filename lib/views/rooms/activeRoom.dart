import 'package:flutter/material.dart';

class ActiveRoomScreen extends StatelessWidget {
  const ActiveRoomScreen({Key? key}) : super(key: key);

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
          
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.favorite_border,
              ),
              onPressed: () {
                // do something
              },
            ),
            IconButton(
              icon: Icon(
                Icons.ios_share_outlined,
              ),
              onPressed: () {
                // do something
              },
            )
          ],
        ),
        body: Text('Active Room')
    );
  }
}