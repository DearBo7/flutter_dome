import 'package:flutter/material.dart';

import 'pages/home_screen.dart';
import 'pages/learn_screen.dart';
import 'pages/my_screen.dart';

class BottomNavigationWidget extends StatefulWidget {
  @override
  _BottomNavigationWidgetState createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  //导航栏颜色
  final _bottomNavigationColor = Colors.blue;

  //当前显示索引
  int _currentIndex = 0;

  List<Widget> widgetList = List();

  @override
  void initState() {
    super.initState();
    widgetList..add(HomeScreen())..add(LearnScreen())..add(MyScreen());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widgetList[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home, color: _bottomNavigationColor),
              title:
                  Text("入库", style: TextStyle(color: _bottomNavigationColor))),
          BottomNavigationBarItem(
              icon: Icon(Icons.book, color: _bottomNavigationColor),
              title:
                  Text("学习", style: TextStyle(color: _bottomNavigationColor))),
          BottomNavigationBarItem(
              icon:
                  Icon(Icons.supervisor_account, color: _bottomNavigationColor),
              title:
                  Text("我的", style: TextStyle(color: _bottomNavigationColor))),
        ],
        //onTap,响应事件
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
