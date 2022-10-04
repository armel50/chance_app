import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class userCard extends StatelessWidget {
  String name;
  int age;
  String jobTitle;
  String profileImg;

  userCard({required this.age, required this.name, required this.jobTitle, required this.profileImg});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover, image: NetworkImage(profileImg)),
              borderRadius: BorderRadius.circular(10.0),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 4,
                    blurRadius: 4,
                    offset: Offset(3, 3))
              ]),
        ),
        Positioned(
          left: 10,
          bottom: 50,
          child: Container(
            child: Text(
              '$name, $age',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
          ),
        ),
        Positioned(
          left: 10,
          bottom: 20,
          child: Container(
            child: Row(
              children: [
                Icon(Icons.cases_outlined),
                Text(
                  ' $jobTitle',
                  style: const TextStyle(
                    fontSize: 16,
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
