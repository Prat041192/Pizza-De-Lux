import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

import '../models/drawer.dart';

class DrawerScreen extends StatefulWidget {
  final DrawerItem drawerItem;

  DrawerScreen({Key key, @required this.drawerItem}) : super(key: key);

  @override
  DrawerScreenState createState() {
    return new DrawerScreenState();
  }
}

class DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return new Center(
        child: new Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        new Icon(
          widget.drawerItem.icon,
          size: 54.0,
        ),
        new Text(
          widget.drawerItem.title,
          style: new TextStyle(fontSize: 48.0, fontWeight: FontWeight.w300),
        ),
      ],
    ));
  }
}