import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Roommate extends StatefulWidget {
  const Roommate({Key? key}) : super(key: key);

  @override
  State<Roommate> createState() => _RoommateState();
}

class _RoommateState extends State<Roommate> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text('Roommmates')),
    );
  }
}
