import 'package:flutter/material.dart';

class NewMessage extends StatefulWidget {
  const NewMessage({ Key? key }) : super(key: key);

  @override
  _NewMessageState createState() => _NewMessageState();
}

class _NewMessageState extends State<NewMessage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Text('New Message'),
        actions: [
          Text('Slider')
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                SizedBox(width: 10.0),
                Text('To: ', style: TextStyle(color: Colors.white70, fontSize: 16.0),),
                Flexible(
                  child: TextField(
                    decoration: new InputDecoration(
                      border: new OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white24),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black87),
                      ),
                      filled: true,
                      fillColor: Colors.black87,
                      hintText: 'Type a name or group',
                      hintStyle: TextStyle(color: Colors.white70)
                    ),
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                SizedBox(width: 10.0,),
                CircleAvatar(
                    radius: 15.0,
                    backgroundColor: Colors.white24,
                    foregroundColor: Colors.white,
                  child: Icon(
                    Icons.groups,
                    color: Colors.white,
                  ),
                ),
                SizedBox(width: 20.0,),
                Text('Create a New Group', style: TextStyle(color: Colors.white),)
              ],
            ),
            SizedBox(height: 20.0,),
            Row(
              children: [
                SizedBox(width: 10.0,),
                CircleAvatar(
                    radius: 15.0,
                    backgroundColor: Colors.white24,
                    foregroundColor: Colors.white,
                  child: Icon(
                    Icons.video_call,
                    color: Colors.white,
                  ),
                ),
                SizedBox(width: 20.0,),
                Text('Create a New Room', style: TextStyle(color: Colors.white),)
              ],
            ),
            SizedBox(height: 20.0,),
            Row(
              children: [
                SizedBox(width: 10.0,),
                Text('Suggested', style: TextStyle(color: Colors.white70, fontSize: 14.0)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}