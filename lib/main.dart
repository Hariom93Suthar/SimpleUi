import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_ui/Animation_prac/Welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Welcome_page(),
    );
  }
}
