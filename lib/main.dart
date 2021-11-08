import 'package:flutter/material.dart';
import 'package:tiktokbasic/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),theme:ThemeData(brightness:Brightness.dark ) ,
    );
  }
}
