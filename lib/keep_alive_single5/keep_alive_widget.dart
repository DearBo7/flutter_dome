import 'package:flutter/material.dart';
import 'keep_alive_view.dart';

class KeepAliveWidget extends StatefulWidget {
  @override
  _KeepAliveWidgetState createState() => _KeepAliveWidgetState();
}

//with 混入其他类(相当于多继承),SingleTickerProviderStateMixin 垂直
class _KeepAliveWidgetState extends State<KeepAliveWidget>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  //初始
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  //销毁
  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Keep Alive"),
        bottom: TabBar(controller: _tabController, tabs: [
          Tab(icon: Icon(Icons.directions_car)),
          Tab(icon: Icon(Icons.directions_transit)),
          Tab(icon: Icon(Icons.directions_bike)),
        ]),
      ),
      //TabBarView视图
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          KeepAliveView(),
          KeepAliveView(),
          KeepAliveView(),
        ],
      ),
    );
  }
}
