import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("We trip out"),
      ),
      body: Column(
        children: <Widget>[
          Card(
            child: Container(
              child: ListTile(
                title: Text(
                    "we trip out",
                    style: TextStyle(fontSize: 50.0)
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.blue
              ),
            )
          ),
          TextFormField(
            decoration: InputDecoration(
                icon: Icon(Icons.search),
                labelText: "Ingresa tu destino"
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 20.0),
            height: 200.0,
            child: ListView(
              // This next line does the trick.
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                  width: 160.0,
                  color: Colors.red,
                ),
                Container(
                  width: 160.0,
                  color: Colors.blue,
                ),
                Container(
                  width: 160.0,
                  color: Colors.green,
                ),
                Container(
                  width: 160.0,
                  color: Colors.yellow,
                ),
                Container(
                  width: 160.0,
                  color: Colors.orange,
                ),
              ],
            ),
          )
        ],
      )
    );
  }
}
