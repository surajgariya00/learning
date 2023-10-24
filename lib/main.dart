import 'package:flutter/material.dart';
import 'package:learning/homepage.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  //init the hive
  await Hive.initFlutter();

  //open box
  var box = await Hive.openBox('mybox');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.lightBlue),
      home: HomePage(),
    );
  }
}
