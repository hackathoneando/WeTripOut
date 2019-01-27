import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeBody extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody>{
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.all(0.0),
      itemExtent: 200.0,
      itemBuilder: (BuildContext context, int index) {
        var card = new MyStatelessWidget();
        //card.setIndex(index);
        return card;
      },
    );
  }

}

class MyStatelessWidget extends StatelessWidget {
  MyStatelessWidget({Key key}) : super(key: key);

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
                    padding: EdgeInsets.fromLTRB(10, 5, 5, 5),
                  ),
                  Container(
                    child: Text(
                      'Santiago Velandia Casas',
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
              padding: EdgeInsets.fromLTRB(13, 5, 5, 13),
              child: Text("Is there someone interested in traveling to Madrid soon?"),
            ),
            Container(
              child: Row(
                
              ),
            )
          ],
        ),
      ),
    );
  }
}