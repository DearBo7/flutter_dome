import 'package:flutter/material.dart';
import 'pages/each_view.dart';

class BottomAppBarWidget extends StatefulWidget {
  @override
  _BottomAppBarWidgetState createState() => _BottomAppBarWidgetState();
}

class _BottomAppBarWidgetState extends State<BottomAppBarWidget> {
  List<Widget> widgetList = List();
  int _index = 0;

  @override
  void initState() {
    super.initState();
    widgetList
      ..add(EachView("首页", Text("首页")))
      ..add(EachView("我的", Text("我的")));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widgetList[_index],
      //可交互浮动的按钮
      floatingActionButton: FloatingActionButton(
        //tooltip 浮动的文字
        tooltip: "浮动文字",
        child: Icon(Icons.add, color: Colors.white),
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (BuildContext context) {
            return EachView("New Page", Text("新页面"));
          }));
        },
      ),
      //融合位置-默认：endFloat
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      //BottomAppBar 工具栏
      bottomNavigationBar: BottomAppBar(
        color: Colors.purpleAccent,
        //融合的缺口-在矩形里面有个圆形缺口
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.home),
              color: Colors.white,
              tooltip: "主页",
              onPressed: () {
                setState(() {
                  _index = 0;
                });
              },
            ),
            IconButton(
              icon: Icon(Icons.supervisor_account),
              color: Colors.white,
              tooltip: "我的",
              onPressed: () {
                setState(() {
                  _index = 1;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
