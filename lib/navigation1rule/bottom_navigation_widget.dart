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
  final _selectBottomNavigationColor = Colors.purple;

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
        currentIndex: _currentIndex,
        items: [
          //activeIcon当选中时显示的图标
          BottomNavigationBarItem(
              icon: Icon(Icons.home, color: _bottomNavigationColor),
              activeIcon: Icon(Icons.home, color: _selectBottomNavigationColor),
              title: Text("入库",
                  style: TextStyle(
                      color: _currentIndex == 0
                          ? _selectBottomNavigationColor
                          : _bottomNavigationColor))),
          BottomNavigationBarItem(
              icon: Icon(Icons.book, color: _bottomNavigationColor),
              activeIcon: Icon(Icons.book, color: _selectBottomNavigationColor),
              title: Text("学习",
                  style: TextStyle(
                      color: _currentIndex == 1
                          ? _selectBottomNavigationColor
                          : _bottomNavigationColor))),
          BottomNavigationBarItem(
              activeIcon: Icon(Icons.account_circle,
                  color: _selectBottomNavigationColor),
              icon: Icon(Icons.account_circle, color: _bottomNavigationColor),
              title: Text("我的",
                  style: TextStyle(
                      color: _currentIndex == 2
                          ? _selectBottomNavigationColor
                          : _bottomNavigationColor))),
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
