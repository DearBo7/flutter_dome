import 'package:flutter/material.dart';

void main() {
  return runApp(MaterialApp(
    title: "导航演示01",
    home: FirstScreen(),
  ));
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("导航页面"),
      ),
      body: Center(
        child: RaisedButton(
            child: Text("查询详情页面"),
            onPressed: () {
              //跳转指定页面
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SecondScreed()));
            }),
      ),
    );
  }
}

class SecondScreed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("商品详情页面..."),
      ),
      body: RaisedButton(
          child: Text("返回"),
          onPressed: () {
            //返回
            Navigator.pop(context);
          }),
    );
  }
}
