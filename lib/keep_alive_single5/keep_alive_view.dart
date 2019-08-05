import 'package:flutter/material.dart';

class KeepAliveView extends StatefulWidget {
  @override
  _KeepAliveViewState createState() => _KeepAliveViewState();
}

class _KeepAliveViewState extends State<KeepAliveView>
    with AutomaticKeepAliveClientMixin {
  //计数器
  int _counter = 0;

  //默认是false-不保存页面状态
  @override
  bool get wantKeepAlive => true;

  @override
  // ignore: must_call_super
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("点一次增加一个数字"),
            Text(
              "$_counter",
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: "Increment",
        child: Icon(Icons.add),
      ),
    );
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
}
