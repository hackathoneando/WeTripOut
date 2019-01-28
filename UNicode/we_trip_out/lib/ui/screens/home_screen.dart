import 'package:flutter/material.dart';
import 'package:we_trip_out/ui/screens/body_screens/home/home_body.dart';
import 'package:we_trip_out/ui/screens/body_screens/profile/profile_body.dart';
import 'package:we_trip_out/ui/screens/body_screens/recommended/recommended-body.dart';

class HomeScreen extends StatefulWidget{
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final _widgetOptions = [
    Text('Index 0: My Trips'),
    new RecommendedBody(),
    new HomeBody(),
    Text('Index 3: Notifications'),
    new ProfileBody(),
  ];

  int _selectedIndex = 2;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
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
            )
        )
    );
  }
}

