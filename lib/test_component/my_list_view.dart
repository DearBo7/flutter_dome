import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("横向ListView"),
        ),
        body: Center(
          child: Container(
              height: 300.0,
              width: 300.0,
              color: Colors.lightBlue,
              child: new MyListView()),
        ),
      ),
    );
  }
}

class MyListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        new Container(
          width: 150.0,
          color: Colors.purpleAccent,
        ),
        new Container(
          width: 150.0,
          color: Colors.deepOrange,
        ),
        new Container(
          width: 150.0,
          color: Colors.amber,
        ),
        new Container(
          width: 150.0,
          color: Colors.lightBlueAccent,
        ),
      ],
    );
  }
}
