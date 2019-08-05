import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Column 垂直布局"),
            backgroundColor: Colors.purple,
          ),
          //垂直居中，水平居中
          body: Center(
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Text("嗯嗯嗯呢呢呢"),
                Expanded(child: new Text("哈哈哈哈哈哈哈哈哈哈哈哈-占剩余空间全部")),
                new Text("嘻嘻嘻嘻嘻嘻嘻"),
              ],
            ),
          )),
    );
  }
}
