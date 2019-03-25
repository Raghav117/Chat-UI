import 'package:chat_app/Chat_Screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (new Scaffold(
      appBar: new AppBar(
        title: new Text("Chat App"),
        centerTitle: true,
      ),
      body: new ChatScreen(),
    ));
  }
}