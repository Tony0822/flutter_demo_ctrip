import 'package:flutter/material.dart';
import 'package:flutter_demo_ctrip/navigator/tab_navigator.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = TextStyle(fontSize: 20);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter",
      theme: ThemeData(
        primaryColor: Colors.blue,
        fontFamily: "PingFang",
      ),
      home: TabNavigator(),
    );
  }
}