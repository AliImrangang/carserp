import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Khushi Motors',
      theme: ThemeData(
        primaryColor: Color(0xFFF3630B)
      ),
     // home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}



