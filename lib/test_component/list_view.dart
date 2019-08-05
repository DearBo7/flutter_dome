import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "啦啦啦",
      home: Scaffold(
        appBar: AppBar(
          title: Text("ListView Dome"),
        ),
        body: new ListView(
          children: <Widget>[
            ListTile(
              leading: new Icon(Icons.ac_unit),
              title: new Title(color: Colors.purpleAccent, child: Text("文字内容")),
            ),
            ListTile(
              leading: new Icon(Icons.accessibility),
              title: new Text("文字内容1"),
            ),
            ListTile(
              leading: new Icon(Icons.account_circle),
              title:
                  new Title(color: Colors.purpleAccent, child: Text("文字内容2")),
            )
          ],
        ),
      ),
    );
  }
}
