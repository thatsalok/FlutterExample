import 'package:flutter/material.dart';
import 'package:flutter3_navigation/pages/adddatapage.dart';
import 'package:flutter3_navigation/pages/endpage.dart';
import 'package:flutter3_navigation/pages/homepage.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue
      ),
      //home: new HomePage(title: 'Flutter 3 : Navigation'),
      routes: {
        '/' : (BuildContext build)=> new HomePage(title: 'Flutter 3 : Navigation'),
        '/adddata':(BuildContext build)=> new AddDataPage(),
        '/endpage':(BuildContext build)=> new EndPage(),
      },
        initialRoute: "/"
      ,
    );
  }
}
