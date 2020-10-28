import 'package:flutter/material.dart';
import 'package:vivsemo/pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Vivsemo",
      theme: new ThemeData(
        primaryColor: Colors.green.shade400,
        accentColor: Colors.green.shade900,
        primaryIconTheme: IconThemeData(color: Colors.green),
        primaryTextTheme: TextTheme(headline1: TextStyle(color: Colors.green)),
        textTheme: TextTheme(headline1: TextStyle(color: Colors.green)),
      ),
      home: new HomePage(),
    );
  }
}
