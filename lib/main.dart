import 'package:flutter/material.dart';
import 'homeWidgth.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My Gym",
      theme:  ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Home(),
    );
  }
}
