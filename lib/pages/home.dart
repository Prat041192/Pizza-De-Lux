
import 'package:flutter/material.dart';
import '../models/drawer.dart';
import '../widgets/drawerScreen.dart';
import '../widgets/menu.dart';
import '../widgets/orderHistory.dart';


class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage> {
  
  // State items
  int _counter = 0;
  int _selectedIndex = 0;

    var _drawerItems = [
      new DrawerItem('Menu', Icons.restaurant_menu ),
      new DrawerItem('Your Orders', Icons.history),
      new DrawerItem('Favorite',Icons.favorite),
      new DrawerItem('Settings', Icons.settings),
      new DrawerItem('Log Out', Icons.person_outline),
    ];


  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _test() {
    setState(() {
      _counter++;
    });

  }
    _getDrawerItemScreen(int pos) {
      if (pos == 0)
        return new Menu(title: 'Pizza De Lux');
      else if (pos == 1)
        return new OrderHistory();
    return new DrawerScreen(drawerItem: _drawerItems[_selectedIndex]);
  }

  _onSelectItem(int index) {
    setState(() {
      _selectedIndex = index;
      _getDrawerItemScreen(_selectedIndex);
    });
    Navigator.of(context).pop(); // close the drawer
  }

  List<Widget> _drawerItemList() {
    List<Widget> _list = [] ;
    var head = new UserAccountsDrawerHeader(
      currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.brown.shade800,
                  child: Text('PN'),
                ),
      accountName: new Text(
                  "Prateek Narula",
                  style: new TextStyle(
                      fontSize: 18.0, fontWeight: FontWeight.w500),
                ),
      accountEmail: new Text(
                  "pnarula1992@hotmail.com",
                  style: new TextStyle(
                      fontSize: 18.0, fontWeight: FontWeight.w500),
                ));
    _list.add(head);
    for (var i= 0; i< _drawerItems.length; i ++)
    {
     _list.add(new ListTile(
              leading: new Icon(
                _drawerItems[i].icon
                ),
              title: Text(_drawerItems[i].title),
              onTap: () {
                _onSelectItem(i);
              },
            )) ;
    }
    return _list;
  } 

  Widget _getDrawer () {
    return Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: _drawerItemList()
        ),
      );
  }

  // Widget _body (){
  //   return new Center(
  //       child: new Column(
  //         mainAxisAlignment: MainAxisAlignment.center,
  //         children: <Widget>[
  //           new Text(
  //             'You have pushed the button this many times:',
  //           ),
  //           new Text(
  //             '$_counter',
  //             style: Theme.of(context).textTheme.display1,
  //           ),
  //         ],
  //       ),
  //     );
  // }

  @override
  Widget build(BuildContext context) {
   final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

    return new Scaffold(
      key: _scaffoldKey,
      appBar: new AppBar(
        leading: IconButton(
                icon: Icon(Icons.menu),
                tooltip: 'Menu',
                onPressed: () => 
                   _scaffoldKey.currentState.openDrawer(),
              ),
        title: new Text(widget.title),
        actions: <Widget>[
              IconButton(
                icon: Icon(Icons.add_shopping_cart),
                tooltip: 'Air it',
                onPressed: _test,
              ),
            ],
      ),
      body:  _getDrawerItemScreen(_selectedIndex),
      drawer:_getDrawer(),
      floatingActionButton: new FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: new Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
