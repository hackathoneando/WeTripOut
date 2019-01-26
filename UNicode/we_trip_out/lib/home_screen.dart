import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final topBar = new AppBar(
    backgroundColor: new Color(0xff559AAF),
    elevation: 3.5,
  );

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: topBar,
        body: Center(
          child: Text('Hello World'),
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
                  onPressed: () {},
                ),
                new IconButton(
                  icon: Icon(
                    Icons.whatshot,
                    color: Color(0xff828282),
                  ),
                  onPressed: () {},
                ),
                new IconButton(
                  icon: Icon(
                    Icons.home,
                    color: Color(0xff828282),
                  ),
                  onPressed: () {},
                ),
                new IconButton(
                  icon: Icon(
                    Icons.notifications,
                    color: Color(0xff828282),
                  ),
                  onPressed: () {},
                ),
                new IconButton(
                  icon: Icon(
                    Icons.account_circle,
                    color: Color(0xff828282),
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ));
  }
}
