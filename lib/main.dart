import 'package:chat_app/Home_Screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (new MaterialApp(
      title: "Chat App",
      home: new HomeScreen(),
    )
    );
  }
}