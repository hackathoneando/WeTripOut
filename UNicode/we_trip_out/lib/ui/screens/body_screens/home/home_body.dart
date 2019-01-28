import 'package:flutter/material.dart';
import 'package:we_trip_out/ui/screens/body_screens/home/home_list_body.dart';

class HomeBody extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => _HomeBodyState();

}

class _HomeBodyState extends State<HomeBody> {

  final topBar = new AppBar(
    backgroundColor: new Color(0xff559AAF),
    elevation: 3.5,
    title: Text('Search anything'),
    leading: new IconButton(
      icon: Icon(
        Icons.search,
        color: Colors.white,
      ),
      onPressed: () {},
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: topBar,
      body: new Column(
        children: <Widget>[
          new Container(
            child: TextField(
                decoration: InputDecoration(
                    hintText: 'Where will we go now?'
                ),
            ),
            margin: EdgeInsets.fromLTRB(50, 20, 70, 0),
          ),
          new Container(
            height: 447,
            child: new HomeList(),
          )
        ],
      ),
    );
  }

}