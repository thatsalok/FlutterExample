import 'package:flutter/material.dart';
import 'package:flutter2_sfw/widgets/mainpage.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: new MainPage(title: 'Flutter 2 - Add City'),
    );
  }
}


