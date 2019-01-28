import 'package:flutter/material.dart';
import 'package:we_trip_out/ui/screens/body_screens/home/home_list_body.dart';

class RecommendedBody extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => _RecommendedBodyState();

}

class _RecommendedBodyState extends State<RecommendedBody> {

  final topBar = new AppBar(
    backgroundColor: new Color(0xff559AAF),
    elevation: 3.5,
    title: Text('Trips in trending'),
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
            height: 510,
            child: new HomeList(),
          )
        ],
      ),
    );
  }

}