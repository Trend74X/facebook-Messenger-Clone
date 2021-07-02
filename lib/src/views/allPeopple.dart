import 'package:flutter/material.dart';

class AllPeople extends StatefulWidget {
  const AllPeople({ Key? key }) : super(key: key);

  @override
  _AllPeopleState createState() => _AllPeopleState();
}

class _AllPeopleState extends State<AllPeople> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Text('All People'),
      ),
      body: Container(
        color: Colors.black87,
        child: Center(
          child: Text(
            'List of all people',
            style: TextStyle(
              color: Colors.white
            ),
          )
        ),
      ),
    );
  }
}