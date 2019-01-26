import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget{
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final topBar = new AppBar(
    backgroundColor: new Color(0xff559AAF),
    elevation: 3.5,
  );

  int _selectedIndex = 0;
  final _widgetOptions = [
    Text('Index 0: My trips'),
    Text('Index 1: Recommended'),
    Text('Index 2: Home'),
    Text('Index 3: Notifications'),
    Text('Index 4: Profile'),
  ];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: topBar,
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: new Container(
          color: Colors.white,
          height: 50.0,
          alignment: Alignment.center,
          child: new BottomAppBar(
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                new IconButton(
                  icon: Icon(
                    Icons.navigation,
                    color: Color(0xff828282),
                  ),
                  onPressed: () { setState(() { _selectedIndex = 0; }); },
                ),
                new IconButton(
                  icon: Icon(
                    Icons.whatshot,
                    color: Color(0xff828282),
                  ),
                  onPressed: () { setState(() { _selectedIndex = 1; }); },
                ),
                new IconButton(
                  icon: Icon(
                    Icons.home,
                    color: Color(0xff828282),
                  ),
                  onPressed: () { setState(() { _selectedIndex = 2; }); },
                ),
                new IconButton(
                  icon: Icon(
                    Icons.notifications,
                    color: Color(0xff828282),
                  ),
                  onPressed: () { setState(() { _selectedIndex = 3; }); },
                ),
                new IconButton(
                  icon: Icon(
                    Icons.account_circle,
                    color: Color(0xff828282),
                  ),
                  onPressed: () { setState(() { _selectedIndex = 4; }); },
                ),
              ],
            ),
          ),
        ));
  }
}

