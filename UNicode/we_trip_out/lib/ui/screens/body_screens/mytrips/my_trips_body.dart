import 'package:flutter/material.dart';
import 'package:we_trip_out/ui/screens/body_screens/mytrips/my_trips_list.dart';

class MyTripsBody extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _MyTripsBodyState();

}

class _MyTripsBodyState extends State<MyTripsBody>{

  final topBar = new AppBar(
    backgroundColor: new Color(0xff559AAF),
    elevation: 3.5,
    title: Center(child: Text('My Trips'),),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: topBar,
      body: MyTripsList(),
    );
  }

}