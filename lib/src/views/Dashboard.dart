import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:messenger/src/controller/DashboardController.dart';
import 'package:messenger/src/views/HomePage.dart';
import 'package:messenger/src/views/People.dart';

class DashBoard extends StatefulWidget {
  final index;
  DashBoard({Key? key,this.index})
      : super(key: key);
  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  final DashboardController dashboardController = Get.put(DashboardController());

  final List<Widget> bodyContent = [
    HomePage(),
    People(),
  ];

  void initState(){
    if (widget.index != null) {
      dashboardController.selectedIndex = widget.index['id'];
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WillPopScope(
        onWillPop: () async{
          Get.defaultDialog(
            title: 'Order Book',
            middleText: 'Do you want to exit the app?',
            barrierDismissible: false,
            onWillPop: null,
            textConfirm: 'Yes',
            confirmTextColor: Colors.amberAccent,
            textCancel: 'No',
            onConfirm: () {
              Get.back();
            },
            onCancel: () => Get.back()
          );
          return false;
        } ,
        child: Obx(
          () => SafeArea(
            child: Center(
              child: bodyContent.elementAt(dashboardController.selectedIndex),
            ),
          ),
        ),
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          selectedItemColor: Colors.blue[600],
          unselectedItemColor: Colors.white,
          backgroundColor: Colors.black87,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.chat),
              label: 'Chats',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.people),
              label: 'People',
            )
          ],
          currentIndex: dashboardController.selectedIndex,
          onTap: (index) => dashboardController.selectedIndex = index,
        ),
      ),
    );
  }
}