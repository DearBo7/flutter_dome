import 'package:flutter/material.dart';

import 'frosted_class4/frosted_class_widget.dart';
import 'keep_alive_single5/keep_alive_widget.dart';
import 'nagigation2irregular/bottom_app_bar_widget.dart';
import 'navigation1rule/bottom_navigation_widget.dart';
import 'page_animation3/page_animation.dart';
import 'draggable6/draggable_dome.dart';

//小组件
void main() {
  return runApp(MyApp6());
}

//1.简单的导航栏切换
class MyApp1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Bottom NavigationBar", //看不见...
      theme: ThemeData.light(),
      home: BottomNavigationWidget(),
    );
  }
}

//2.不规则导航栏
class MyApp2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //自定义主题样本
      theme: ThemeData(primarySwatch: Colors.purple),
      home: BottomAppBarWidget(),
    );
  }
}

//3.动画切换
class MyApp3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //自定义主题样本
      theme: ThemeData(primarySwatch: Colors.purple),
      home: FirstPage(),
    );
  }
}

//4.毛玻璃效果
class MyApp4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FrostedClassWidget(),
    );
  }
}

//5.保持页面状态(tabs)
class MyApp5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.green),
      home: KeepAliveWidget(),
    );
  }
}
/// 6.可拖动的
class MyApp6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DraggableDome(),
    );
  }
}