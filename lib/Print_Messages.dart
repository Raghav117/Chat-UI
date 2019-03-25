import 'package:flutter/material.dart';

const String name = "Raghav Garg";

class PrintMessages extends StatelessWidget {
  final String text;
  PrintMessages(this.text);

  @override
  Widget build(BuildContext context) {
    return new Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        new CircleAvatar(
          child: new Text(name[0]),
          backgroundColor: Colors.redAccent,
        ),
        new Container(
          margin: EdgeInsets.only(left: 4.0),
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Text(name,),
              new Text(text),
              new Divider(
                height: 10.0,
              )
            ],
          ),
        ),
      ],
    );
  }
} 
