import 'package:flutter/material.dart';
import 'package:pizza_store_app/descriptionpage.dart';
import 'package:pizza_store_app/home_screen.dart';
import 'package:pizza_store_app/secondscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SecondPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
     