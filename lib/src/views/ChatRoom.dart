import 'package:flutter/material.dart';

class ChatRoom extends StatefulWidget {
  const ChatRoom({ Key? key }) : super(key: key);

  @override
  _ChatRoomState createState() => _ChatRoomState();
}

class _ChatRoomState extends State<ChatRoom> {
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Colors.black87,
        appBar: AppBar(
          backgroundColor: Colors.black87,
          leading: Row(
            children: [
              Icon(Icons.arrow_back),
              SizedBox(width: 5.0,),
              Flexible(
                child: CircleAvatar(
                  backgroundColor: Colors.red,
                ),
              )
            ],
          ),
          title: Column(
            children: [
              Text(
                'Mr Red',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0
                ),
              ),
              Text(
                'Active Now',
                style: TextStyle(
                  color: Colors.white24,
                  fontSize: 12.0
                ),
              )
            ],
          ),
          actions: [
            Text('call'),
            Text('video'),
            Text('info')
          ],
        ),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Text('area')
          ),
        ),
      );
  }

}