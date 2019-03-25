import 'package:chat_app/Print_Messages.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final List <PrintMessages> _messages =<PrintMessages>[];
  final TextEditingController _textEditingController =
      new TextEditingController();
  void _buildSubmitted(String text) {
    _textEditingController.clear();
    if(text!=null)
    {
      PrintMessages messages = new PrintMessages(text);
      setState(() {
        _messages.insert(0, messages);
      });
    }
  }

  Widget _buildcomposer()
  {
    return new Container(
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      child: new Row(
        children: <Widget>[
          new Flexible(
            child: new TextFormField(
              decoration: new InputDecoration.collapsed(
                hintText: "Say Something",
              ),
              controller: _textEditingController,
              onFieldSubmitted: _buildSubmitted,  
            ),
          ),
          new IconButton(
            icon: new Icon(Icons.send,color: Colors.redAccent,),
            onPressed:()=>_buildSubmitted(_textEditingController.text),
          )
        ],
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[
        new Flexible(
                  child: new ListView.builder(
                  itemBuilder: (_,index)=>_messages[index],
                  itemCount: _messages.length,
                  reverse: true,
                
          ),
        ),
        _buildcomposer(),
      ],
    );
  }
}
