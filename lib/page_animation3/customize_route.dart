import 'package:flutter/material.dart';

//自定义动画路由效果
class CustomizeRoute extends PageRouteBuilder {
  final Widget _widget;

  CustomizeRoute(this._widget)
      : super(
            //transitionDuration:过渡时间
            transitionDuration: Duration(seconds: 1),
            pageBuilder: (
              BuildContext context,
              Animation<double> animation1,
              Animation<double> animation2,
            ) {
              return _widget;
            },
            transitionsBuilder: (BuildContext context,
                Animation<double> animation1,
                Animation<double> animation2,
                Widget child) {
              //渐隐渐显的路由动画效果
              /*return FadeTransition(
                //过渡透明度-从没有-有
                opacity: Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
                    //parent默认就是animation1
                    parent: animation1,
                    //curve 动画曲线-效果 fastOutSlowIn-快进快出
                    curve: Curves.fastOutSlowIn)),
                child: child,
              );*/

              //缩放的动画效果
              /*return ScaleTransition(
                scale: Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
                    parent: animation1, curve: Curves.fastOutSlowIn)),
                child: child,
              );*/
              //child 里面还可以包含动画,没有就写当前child
              //旋转+缩放动画效果
              /*return RotationTransition(
                turns: Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
                    parent: animation1, curve: Curves.fastOutSlowIn)),
                child: ScaleTransition(
                  scale: Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
                      parent: animation1, curve: Curves.fastOutSlowIn)),
                  child: child,
                ),
              );*/
              //左右滑动动画
              return SlideTransition(
                position: Tween<Offset>(
                        //x,y
                        begin: Offset(-1.0, 0.0),
                        end: Offset(0.0, 0.0))
                    .animate(CurvedAnimation(
                        parent: animation1, curve: Curves.fastOutSlowIn)),
                child: child,
              );
            });
}
