import 'package:flutter/material.dart';

import 'draggable_widget.dart';

class DraggableDome extends StatefulWidget {
  @override
  _DraggableDomeState createState() => _DraggableDomeState();
}

class _DraggableDomeState extends State<DraggableDome> {
  Color _draggableColor = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Stack 可重叠的
      body: Stack(
        children: <Widget>[
          DraggableWidget(offset: Offset(80, 80), widgetColor: Colors.cyan),
          DraggableWidget(
              offset: Offset(180, 80), widgetColor: Colors.redAccent),
          DraggableWidget(
              offset: Offset(280, 80), widgetColor: Colors.purpleAccent),
          Center(
            //拖拽接收器
            child: DragTarget(
              //触发事件
              onAccept: (Color color) {
                _draggableColor = color;
              },
              builder: (context, candidateData, rejectedData) => Container(
                width: 200,
                height: 200,
                color: _draggableColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
