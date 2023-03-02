import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:messenger/src/views/ChatRoom.dart';
import 'package:messenger/src/views/NewMessage.dart';
import 'package:messenger/src/views/ProfilePage.dart';
import 'package:messenger/src/views/SearchPage.dart';
import 'package:sticky_headers/sticky_headers/widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _picker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: SingleChildScrollView(
        child: Container(
          color: Colors.black87,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: homepagelayout(),
          ),
        ),
      ),
    );
  }

  homepagelayout(){
    return StickyHeader(
      header: Container(
        color: Colors.black87,
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    GestureDetector(
                      onTap: () => Get.to(() => ProfilePage()),
                      child: CircleAvatar(
                        radius: 20.0,
                        backgroundColor: Colors.white24,
                        foregroundColor: Colors.white,
                        child: const Icon(Icons.person),
                      ),
                    ),
                    SizedBox(width: 10.0),
                    Text('Chats',
                      style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () async {
                        await _picker.getImage(source: ImageSource.camera);
                      },
                      child: CircleAvatar(
                        radius: 15.0,
                        backgroundColor: Colors.white24,
                        foregroundColor: Colors.white,
                        child: const Icon(Icons.camera_alt),
                      ),
                    ),
                    SizedBox(width: 10.0),
                    GestureDetector(
                      child: CircleAvatar(
                        radius: 15.0,
                        backgroundColor: Colors.white24,
                        foregroundColor: Colors.white,
                        child: const Icon(Icons.create_rounded)
                      ),
                      onTap: () => Get.to(() => NewMessage()),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 10.0)
          ],
        ),
      ),
      content:  Column(
        children: <Widget>[
          searchBar(),
          stories(),
          chatArea()
        ],
      ),
    );
  }

  searchBar(){
    return GestureDetector(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 40.0,
        decoration: BoxDecoration(
          color: Colors.white24,
          borderRadius: BorderRadius.all(Radius.circular(20))
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              SizedBox(width: 10.0),
              Icon(
                Icons.search,
                color: Colors.white70,
              ),
              SizedBox(width: 8.0),
              Text(
                'Search',
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 20.0
                ),
              ),
            ],
          ),
        )
      ),
      onTap: () => Get.to(() => SearchPage()),
    );
  }

  stories(){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Column(
            children: [
              CircleAvatar(
                radius: 30.0,
                backgroundColor: Colors.white24,
                foregroundColor: Colors.white,
                child: const Icon(
                  Icons.add,
                  size: 30.0,
                )
              ),
              Text(
                'Your Story',
                style: TextStyle(color: Colors.white)
              )
            ],
          ),
          SizedBox(width: 10.0),
          Column(
            children: [
              CircleAvatar(
                radius: 30.0,
                backgroundColor: Colors.red,
                foregroundColor: Colors.white,
                child: const Text('')
              ),
              Text(
                'Mr Red',
                style: TextStyle(color: Colors.white)
              )
            ],
          ),
          SizedBox(width: 10.0),
          Column(
            children: [
              CircleAvatar(
                radius: 30.0,
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
                child: const Text('')
              ),
              Text(
                'Mrs blue',
                style: TextStyle(color: Colors.white)
              )
            ],
          ),
          SizedBox(width: 10.0),
          Column(
            children: [
              CircleAvatar(
                radius: 30.0,
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
                child: const Text('')
              ),
              Text(
                'Mr Green',
                style: TextStyle(color: Colors.white)
              )
            ],
          ),
          SizedBox(width: 10.0),
          Column(
            children: [
              CircleAvatar(
                radius: 30.0,
                backgroundColor: Colors.pink,
                foregroundColor: Colors.white,
                child: const Text('')
              ),
              Text(
                'Ms Pink',
                style: TextStyle(color: Colors.white)
              )
            ],
          ),
        ],
      ),
    );
  }

  chatArea(){
    return Column(
      children: [
        ListTile(
          leading: CircleAvatar(
            radius: 30.0,
            backgroundColor: Colors.red,
            foregroundColor: Colors.white,
            child: null,
          ),
          title: Text('Mr Red', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
          subtitle: Text('Hello', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
          trailing: Icon(Icons.notifications_off, color: Colors.white24, size: 15.0),
          onTap: () => Get.to(() => ChatRoom()),
        ),
        ListTile(
          leading: CircleAvatar(
            radius: 30.0,
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white,
            child: null,
          ),
          title: Text('Mrs Blue', style: TextStyle(color: Colors.white),),
          subtitle: Text('You: hello Mrs Blue.', style: TextStyle(color: Colors.white),),
        ),
        ListTile(
          leading: CircleAvatar(
            radius: 30.0,
            backgroundColor: Colors.green,
            foregroundColor: Colors.white,
            child: null,
          ),
          title: Text('Mr Green', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
          subtitle: Text('Good day to you', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
        ),
        ListTile(
          leading: CircleAvatar(
            radius: 30.0,
            backgroundColor: Colors.pink,
            foregroundColor: Colors.white,
            child: null,
          ),
          title: Text('Ms Pink', style: TextStyle(color: Colors.white),),
          subtitle: Text('You: Hi!!', style: TextStyle(color: Colors.white),),
        ),
        ListTile(
          leading: CircleAvatar(
            radius: 30.0,
            backgroundColor: Colors.orange,
            foregroundColor: Colors.white,
            child: null,
          ),
          title: Text('Multi Color Society', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
          subtitle: Text('Mrs Blue: Everyone agrees on this right?', overflow: TextOverflow.ellipsis, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
          trailing: Icon(Icons.notifications_off, color: Colors.white24, size: 15.0),
        ),
        ListTile(
          leading: CircleAvatar(
            radius: 30.0,
            backgroundColor: Colors.purple,
            foregroundColor: Colors.white,
            child: null,
          ),
          title: Text('Mr Red, Mrs Blue', style: TextStyle(color: Colors.white),),
          subtitle: Text('You: Please listen to me', style: TextStyle(color: Colors.white),),
        ),
        ListTile(
          leading: CircleAvatar(
            radius: 30.0,
            backgroundColor: Colors.grey,
            foregroundColor: Colors.white,
            child: null,
          ),
          title: Text('Mr Green, Ms Pink', style: TextStyle(color: Colors.white),),
          subtitle: Text("Ms Pink: It's over now", style: TextStyle(color: Colors.white),),
        ),
        ListTile(
          leading: CircleAvatar(
            radius: 30.0,
            backgroundColor: Colors.yellow,
            foregroundColor: Colors.white,
            child: null,
          ),
          title: Text('Yellow', style: TextStyle(color: Colors.white),),
          subtitle: Text('This is a secret betn us ok?', style: TextStyle(color: Colors.white),),
        ),
        ListTile(
          leading: CircleAvatar(
            radius: 30.0,
            backgroundColor: Colors.black,
            foregroundColor: Colors.white,
            child: null,
          ),
          title: Text('Blackie', style: TextStyle(color: Colors.white),),
          subtitle: Text('You: Ok sure.', style: TextStyle(color: Colors.white),),
        ),
        ListTile(
          leading: CircleAvatar(
            radius: 30.0,
            backgroundColor: Colors.white,
            foregroundColor: Colors.white,
            child: null,
          ),
          title: Text('Mrs White', style: TextStyle(color: Colors.white),),
          subtitle: Text('Take care, see you.', style: TextStyle(color: Colors.white),),
        ),
      ],
    );
  }

}