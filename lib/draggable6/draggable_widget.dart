import 'package:flutter/material.dart';

class DraggableWidget extends StatefulWidget {
  final Offset offset;

  final Color widgetColor;

  DraggableWidget({Key key, this.offset, this.widgetColor}) : super(key: key);

  @override
  _DraggableWidgetState createState() => _DraggableWidgetState();
}

class _DraggableWidgetState extends State<DraggableWidget> {
  Offset offset;

  @override
  void initState() {
    super.initState();
    offset = widget.offset;
  }

  @override
  Widget build(BuildContext context) {
    //Positioned:可以指定位置
    return Positioned(
      left: offset.dx, //距离左边多少
      top: offset.dy, //距离头部多少
      child: Draggable(
        data: widget.widgetColor,
        child: Container(
          width: 100,
          height: 100,
          color: widget.widgetColor,
        ),
        //feedback->拿起拖动时,子组件的样子
        feedback: Container(
          width: 110,
          height: 110,
          color: widget.widgetColor.withOpacity(0.5), //透明
        ),
        //onDraggableCanceled 松手的时候
        onDraggableCanceled: (Velocity velocity, Offset offset) {
          //offset 送手时的位置
          setState(() {
            this.offset = offset;
          });
        },
      ),
    );
  }
}
