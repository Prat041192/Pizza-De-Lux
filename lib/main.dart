import 'package:flutter/material.dart';

import './pages/home.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Pizza De Lux',
      theme: new ThemeData(
        primarySwatch: Colors.red,
      ),
      home: new MyHomePage(title: 'Pizza De Lux'),
      // routes: {
      //   '/home': (context) => new MyHomePage(title: 'Pizza De Lux'),
      //   '/Orders':(context) => new Order(title: 'Pizza De Lux')
      // }
    );
  }
}



