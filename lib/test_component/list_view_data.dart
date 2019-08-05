import 'package:flutter/material.dart';

void main() =>
    runApp(MyApp(items: List<String>.generate(100, (i) => "Dan ${i + 1}")));

class MyApp extends StatelessWidget {
  final List<String> items;

  MyApp({Key key, @required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: new AppBar(title: Text("List View Data")),
        body: new ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              return new ListTile(
                leading: new Icon(Icons.ac_unit),
                title: new Text("${items[index]}"),
              );
            }),
      ),
    );
  }
}
