
import 'package:flutter/material.dart';
import '../models/history.dart';
import 'package:intl/intl.dart';

class OrderHistory extends StatelessWidget {
  var _screenSize ;
_getFormattedDate(){
  var now = new DateTime.now();
  var formatter = new DateFormat('yyyy-MM-dd');
  return formatter.format(now).toString();
}
  List<History> data= [];

  List<Widget>_createHistory() {
    data = [
    new History(_getFormattedDate(), '30'),
    new History(_getFormattedDate(), '35'),
    new History(_getFormattedDate(), '25'),
    new History(_getFormattedDate(), '30'),
    new History(_getFormattedDate(), '35'),
    new History(_getFormattedDate(), '25'),
    new History(_getFormattedDate(), '30'),
    new History(_getFormattedDate(), '35'),
    new History(_getFormattedDate(), '25'),
    new History(_getFormattedDate(), '30'),
    new History(_getFormattedDate(), '35'),
    new History(_getFormattedDate(), '25')
  ];
    return  data.map((item) => Dismissible(
      key: Key('1'),
              onDismissed: (direction) {
              },
              // Show a red background as the item is swiped away
              background: Container(color: Colors.red),
              child: Container (
                child:ListTile(
                    leading: new Icon(
                      Icons.repeat_one,
                      ),
                    title:Text('Date: ' + item.date),
                    trailing: Text(item.amount + '€'),
                    onTap: ()=> {},
                  ),
                  decoration: BoxDecoration(
                    border: Border.all()
                  ),
              ),
            )).toList();
  }

  Widget _body (){
    return new ListView(
      padding: EdgeInsets.all(2),
      children: _createHistory()
    );
  }

  @override
  Widget build(BuildContext context) {
    _screenSize = MediaQuery.of(context).size;
    return _body();
  }
}
