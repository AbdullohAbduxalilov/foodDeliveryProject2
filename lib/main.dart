import 'package:flutter/material.dart';
import 'package:flutter2homework3/screens/firstScreen.dart';
import 'package:flutter2homework3/screens/fliterScreen.dart';
import 'package:flutter2homework3/screens/mainScreen.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: MainScreen(),
      ),
    );
  }
}
