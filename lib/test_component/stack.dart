import 'package:flutter/material.dart';

void main() => runApp(MyApp());

//当前用的的新组件：Stack、CircleAvatar、BorderRadius、Positioned
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var stack = new Stack(
      //偏移:0-1范围
      alignment: const FractionalOffset(0.5, 0.8),
      children: <Widget>[
        //CircleAvatar 圆形
        new CircleAvatar(
          backgroundImage: new NetworkImage(
              "http://img0.ph.126.net/WPoHgfhyqEjUG_HP2AK7ow==/6631872608210454282.jpg"),
          radius: 120.0,
          //直接设置child：Text的话,文字在容器重置居中显示
          /*child: new Container(
            //使用decoration:BoxDecoration盒子可以增加背景
            decoration: new BoxDecoration(color: Colors.blue),
            padding: EdgeInsets.all(5.0),
            child: Text("啦啦啦"),
            //使用偏移的话,设置了decoration-color的话,就会把父级遮挡住
            //alignment: FractionalOffset(0.5, 0.8),
          ),*/
        ),
        new Container(
          decoration: new BoxDecoration(
              color: Colors.blue,
              //圆角
              borderRadius: BorderRadius.circular(3.0)),
          padding: EdgeInsets.all(5.0),
          child: Text("啦啦啦"),
        ),
        //Positioned 相当于css里面的定位
        new Positioned(
            bottom: 10,
            right: 60,
            child: new Text(
              "移动Positioned",
              style: TextStyle(
                  color: Colors.white, backgroundColor: Colors.deepOrange),
            ))
      ],
    );
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Stack 重叠"),
            backgroundColor: Colors.purple,
          ),
          //水平居中
          body: Center(
            child: stack,
          )),
    );
  }
}
