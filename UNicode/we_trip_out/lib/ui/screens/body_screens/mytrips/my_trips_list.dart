import 'package:flutter/material.dart';

class MyTripsList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyTripsListState();
}

class _MyTripsListState extends State<MyTripsList>{
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.all(0.0),
      itemExtent: 80.0,
      itemBuilder: (BuildContext context, int index) {
        var card = new CardTrip();
        return card;
      },
    );
  }

}

class CardTrip extends StatefulWidget{

  @override
  CardTripState createState() {
    return new CardTripState();
  }

}

class CardTripState extends State<CardTrip> {

  var picture = Icons.folder;
  var NameTrip = 'Journey to Bogotá';
  var date = 'Feb 18, 2019';


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              leading: Icon(picture),
              title: Text('$NameTrip'),
              subtitle: Text('$date'),
            ),
          ],
        ),
      ),
    );
  }
}