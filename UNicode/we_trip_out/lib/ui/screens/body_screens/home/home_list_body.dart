import 'package:flutter/material.dart';

class HomeList extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _HomeListState();
}

class _HomeListState extends State<HomeList>{
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.all(0.0),
      itemExtent: 143.0,
      itemBuilder: (BuildContext context, int index) {
        var card = new CardList();
        //card.setIndex(index);
        return card;
      },
    );
  }

}

class CardList extends StatefulWidget{
  @override
  _CardListState createState() => _CardListState();
  }

class _CardListState extends State<CardList> {

  int likes = 0;
  int comments = 0;
  String name = 'Santiago Velandia Casas';
  String message = 'Is there someone interested in traveling to Madrid soon?';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              child: Row(
                children: <Widget>[
                  Container(
                    child: Icon(Icons.account_circle, size: 35,),
                    margin: EdgeInsets.all(10),
                  ),
                  Container(
                    child: Text(
                      '$name',
                      style: TextStyle(
                          fontSize: 15,
                          fontFamily: "RobotoBold"
                      ),
                    ),
                  )
                ],
              )
            ),
            Container(
              margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
              child: Text("$message"),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Row(
                      children: <Widget>[
                        IconButton(
                          icon: Icon(
                            Icons.favorite,
                            color: Color(0xff828282),
                          ),
                          onPressed: () { setState(() {likes+=1;});},
                        ),
                        Text(
                          '$likes Travelikes!',
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                      child: Row(
                        children: <Widget>[
                          Container(
                            child: new IconButton(
                              icon: Icon(
                                Icons.comment,
                                color: Color(0xff828282),
                              ),
                              onPressed: () { setState(() {comments+=1;});},
                            ),
                          ),
                          Text(
                            '$comments Comments',
                          ),
                        ],
                      )
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}