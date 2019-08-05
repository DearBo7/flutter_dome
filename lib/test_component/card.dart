import 'package:flutter/material.dart';

void main() => runApp(MyApp());

//Card、Divider(添加分割线)
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var card = new Card(
      child: Column(
        children: <Widget>[
          new ListTile(
            title: Text("标题1"),
            subtitle: Text("副标题1"),
            leading: new Icon(Icons.add_alert),
          ),
          new Divider(),
          new ListTile(
            title: Text("标题2"),
            subtitle: Text("副标题2"),
            leading: new Icon(Icons.add_alert),
          ),
          new Divider(),
          new ListTile(
            title: Text("标题3"),
            subtitle: Text("副标题3"),
            leading: new Icon(Icons.add_alert),
          ),
          new Divider(),
          new ListTile(
            title: Text("标题4"),
            subtitle: Text("副标题4"),
            leading: new Icon(Icons.add_alert),
          ),
          new Divider(),
          new ListTile(
            title: Text("标题5"),
            subtitle: Text("副标题5"),
            leading: new Icon(Icons.add_alert),
          ),
          new Divider(),
          new ListTile(
            title: Text("标题6"),
            subtitle: Text("副标题6"),
            leading: new Icon(Icons.add_alert),
          ),
          new Divider(),
          new ListTile(
            title: Text("标题7"),
            subtitle: Text("副标题7"),
            leading: new Icon(Icons.add_alert),
          )
        ],
      ),
    );

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Card 卡片布局"),
            backgroundColor: Colors.deepPurpleAccent,
          ),
          body: card),
    );
  }
}
