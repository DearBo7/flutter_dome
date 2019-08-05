import 'dart:ui';

import 'package:flutter/material.dart';

//毛玻璃效果
class FrostedClassWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 300.0,
        decoration:
            BoxDecoration(border: Border.all(color: Colors.purpleAccent)),
        child: Stack(
          children: <Widget>[
            //ConstrainedBox 约束盒子,添加额外的约束条件child上
            ConstrainedBox(
              //随里面的东西扩展
              constraints: const BoxConstraints.expand(),
              child: Image.network(
                  "http://pic16.nipic.com/20111006/6239936_092702973000_2.jpg",
                  fit: BoxFit.fill),
            ),
            Center(
              //ClipRect 可裁切的矩形
              child: ClipRect(
                //BackdropFilter 背景过滤器
                child: BackdropFilter(
                    //模糊过滤-(ImageFilter)在dart:ui里面
                    filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
                    child: Opacity(
                      opacity: 0.5,
                      child: Container(
                        //BoxDecoration 盒子修饰器
                        decoration: BoxDecoration(color: Colors.grey.shade200),
                        child: Center(
                          child: Text(
                            '啦啦啦',
                            style: Theme.of(context).textTheme.display3, //字体皮肤
                          ),
                        ),
                      ),
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
