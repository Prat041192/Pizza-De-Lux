
import 'package:flutter/material.dart';

import '../models/category.dart';



class CategoryCard extends StatelessWidget {

  final Category _category;
  var _screenSize ;
  // State items
  CategoryCard(this._category);

  Widget _body (){
    return new Padding(
      padding: EdgeInsets.all(2),
      child:  Container(
        height: _screenSize.height/2,
        child: Column(
          children: <Widget>[
            Text(this._category.name),
            Icon(this._category.icon)
          ],
        ),
        decoration: BoxDecoration(
          border: Border.all()
        ),
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    _screenSize = MediaQuery.of(context).size;
    return _body();
  }
}
