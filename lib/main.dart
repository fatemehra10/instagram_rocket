import 'package:flutter/material.dart';
import 'package:project_instagram/myHomePage.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Instagram",
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
        primaryIconTheme: IconThemeData(color: Colors.black),
        primaryTextTheme: TextTheme(caption:  TextStyle(color: Colors.black))
      ),
      home: MyHomePage()
    );
  }
}
