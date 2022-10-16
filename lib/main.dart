import 'package:chance_app/constants.dart';
import 'package:flutter/material.dart';
import './app.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          primaryColor: Color(0x1f68a3),
          appBarTheme: AppBarTheme(
            backgroundColor: primaryColor,
            foregroundColor: AppBarTextColor,
          )),
      home: App(),
    );
  }
}
