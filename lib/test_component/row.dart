import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Row 水平方向布局"),
        ),
        body: Row(
          children: <Widget>[
            //Expanded 灵活布局,自动计算宽度,直接写组件就是不灵活布局
            Expanded(
                child: new MaterialButton(
              onPressed: () {},
              color: Colors.purpleAccent,
              child: Text("MaterialButton"),
            )),
            Expanded(
                child: new RaisedButton(
              onPressed: () {},
              color: Colors.deepOrange,
              child: Text("RaisedButton"),
            )),
            Expanded(
                child: new FlatButton(
              onPressed: () {},
              color: Colors.cyan,
              child: Text("FlatButton"),
            ))
          ],
        ),
      ),
    );
  }
}
