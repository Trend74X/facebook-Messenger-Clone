import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({ Key? key }) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Text(
          'Me',
          style: TextStyle(
            color: Colors.white
          ),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.black87,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                children: [
                  SizedBox(height: 10.0),
                  CircleAvatar(
                    radius: 50.0,
                    backgroundColor: Colors.white24,
                    child: Icon(
                      Icons.person,
                      size: 70.0,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 10.0,),
                  Text(
                    'FaceBook User',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.white24,
                        child: Icon(
                          Icons.dark_mode,
                          color: Colors.white,
                        ),
                      ),
                      title: Text(
                        'Dark Mode', 
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0
                        ),
                      ),
                      subtitle: Text(
                        'On',
                        style: TextStyle(
                          color: Colors.grey
                        ),
                      ),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.purple,
                        child: Icon(
                          Icons.dark_mode,
                          color: Colors.white,
                        ),
                      ),
                      title: Text(
                        'Switch Account', 
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0
                        ),
                      ),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.blue[300],
                        child: Icon(
                          Icons.message,
                          color: Colors.white,
                        ),
                      ),
                      title: Text(
                        'Message Requests', 
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0
                        ),
                      ),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.purple,
                        child: Icon(
                          Icons.restore_from_trash,
                          color: Colors.white,
                        ),
                      ),
                      title: Text(
                        'Archived Chats', 
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0
                        ),
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Text(
                      'Profile',
                      style: TextStyle(
                        color: Colors.white24
                      ),
                    ),
                    SizedBox(height: 10.0),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.green,
                        child: Icon(
                          Icons.dark_mode,
                          color: Colors.white,
                        ),
                      ),
                      title: Text(
                        'Active Status', 
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0
                        ),
                      ),
                      subtitle: Text(
                        'On',
                        style: TextStyle(
                          color: Colors.grey
                        ),
                      ),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.orange[900],
                        child: Icon(
                          Icons.alternate_email,
                          color: Colors.white,
                        ),
                      ),
                      title: Text(
                        'Username', 
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0
                        ),
                      ),
                      subtitle: Text(
                        'm.me/facebook.user.5',
                        style: TextStyle(
                          color: Colors.grey
                        ),
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Text(
                      'Preferences',
                      style: TextStyle(
                        color: Colors.white24
                      ),
                    ),
                    SizedBox(height: 10.0),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.blue[300],
                        child: Icon(
                          Icons.shield,
                          color: Colors.white,
                        ),
                      ),
                      title: Text(
                        'Privacy', 
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0
                        ),
                      ),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.deepOrange[300],
                        child: Icon(
                          Icons.emoji_emotions_rounded,
                          color: Colors.white,
                        ),
                      ),
                      title: Text(
                        'Avatar', 
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0
                        ),
                      ),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.purple,
                        child: Icon(
                          Icons.notifications,
                          color: Colors.white,
                        ),
                      ),
                      title: Text(
                        'Notifications & Sounds', 
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0
                        ),
                      ),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.blue[900],
                        child: Icon(
                          Icons.dark_mode,
                          color: Colors.white,
                        ),
                      ),
                      title: Text(
                        'Data Saver', 
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0
                        ),
                      ),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.blue,
                        child: Icon(
                          Icons.dark_mode,
                          color: Colors.white,
                        ),
                      ),
                      title: Text(
                        'Story', 
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0
                        ),
                      ),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.purple,
                        child: Icon(
                          Icons.dark_mode,
                          color: Colors.white,
                        ),
                      ),
                      title: Text(
                        'SMS', 
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0
                        ),
                      ),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.blue,
                        child: Icon(
                          Icons.people,
                          color: Colors.white,
                        ),
                      ),
                      title: Text(
                        'Phone Contacts', 
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0
                        ),
                      ),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.purple,
                        child: Icon(
                          Icons.image_outlined,
                          color: Colors.white,
                        ),
                      ),
                      title: Text(
                        'Photos & Media', 
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0
                        ),
                      ),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.green,
                        child: Icon(
                          Icons.dark_mode,
                          color: Colors.white,
                        ),
                      ),
                      title: Text(
                        'Chat Heads', 
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0
                        ),
                      ),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.blue,
                        child: Icon(
                          Icons.file_download_sharp,
                          color: Colors.white,
                        ),
                      ),
                      title: Text(
                        'App Updates', 
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0
                        ),
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Text(
                      'Account',
                      style: TextStyle(
                        color: Colors.white24
                      ),
                    ),
                    SizedBox(height: 10.0,),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.blue[700],
                        child: Icon(
                          Icons.settings,
                          color: Colors.white,
                        ),
                      ),
                      title: Text(
                        'Account Settings', 
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0
                        ),
                      ),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.orange[800],
                        child: Icon(
                          Icons.report_problem_rounded,
                          color: Colors.white,
                        ),
                      ),
                      title: Text(
                        'Report Technical Problem', 
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0
                        ),
                      ),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.lightBlue[400],
                        child: Icon(
                          Icons.help,
                          color: Colors.white,
                        ),
                      ),
                      title: Text(
                        'Help', 
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0
                        ),
                      ),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.white24,
                        child: Icon(
                          Icons.insert_drive_file,
                          color: Colors.white,
                        ),
                      ),
                      title: Text(
                        'Legal & Policies', 
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}