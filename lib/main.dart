
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:voltage/ui/introductionscreen.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Voltage',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home:  IntroductionScreen(),
    );
  }
}
