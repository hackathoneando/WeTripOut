import 'package:flutter/material.dart';
import 'package:we_trip_out/ui/screens/home_screen.dart';
import 'ui/screens/login_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new LoginPage(),
    );
  }
}
