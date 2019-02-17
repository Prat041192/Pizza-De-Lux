
import 'package:flutter/material.dart';
import '../models/category.dart';
import './categoryCard.dart';


class Menu extends StatefulWidget {
  Menu({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MenuState createState() => new _MenuState();
}


class _MenuState extends State<Menu> {
  
  // State items

  List _category = [
    new Category('Pizza', Icons.fastfood),
    new Category('Pasta', Icons.fastfood),
    new Category('Soups', Icons.fastfood),
    new Category('Main Course', Icons.fastfood)
  ];

  _categoryList(){
    var _itemList = _category.map((item) => 
      CategoryCard(item)
    ).toList();

    return _itemList;
  }

  Widget _body (){
    return new Center(
        child: new ListView(
          children: _categoryList()
        ),
      );
  }

  @override
  Widget build(BuildContext context) {
    return _body();
  }
}
