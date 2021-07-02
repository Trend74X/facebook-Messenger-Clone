import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:messenger/src/views/Dashboard.dart';

Future<Null> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class GetStorage {
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      home: DashBoard(),
    );
  }
}