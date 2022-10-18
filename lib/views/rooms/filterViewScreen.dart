import 'package:chance_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class FilterViewScreen extends StatelessWidget {
  const FilterViewScreen({Key? key}) : super(key: key);

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
          title: Text('Filter'),
          actions: <Widget>[
                     TextButton(
            style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(defaultPadding),
                foregroundColor: AppBarTextColor),
            child: const Text('Reset'),
            onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => FilterViewScreen()),
                );
            },
          ),
          ],
        ),
      body: Container(child: Text('Filter Screen'),),
    );
  }
}