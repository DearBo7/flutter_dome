import 'package:flutter/material.dart';

void main() => runApp(MyApp());

//EdgeInsets支持多种自定义方法:
//EdgeInsets.all() 全方向
//EdgeInsets.only(left,top,right,bottom) 自定义各方向的边距
//EdgeInsets.symmetric(vertical, horizontal)自定义垂直,水平对称边距
//EdgeInsets.fromWindowPadding(ui.WindowPadding padding, double devicePixelRatio) 根据机型屏幕尺寸定义
//decoration这里用到BoxDecoration组件
//常用属性:
//color颜色
//border 描边宽度
//borderRadius 圆角值
//boxShadow 阴影
//支持gradient 梯度,混合模式backgroundBlendMode shape自定义形状
//Border BorderRadius同样支持多种自定方法.
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Dome",
      home: Scaffold(
        //设置文字显示
        /*body: Center(
          child: Text(
            "Hello Word Flutter.双引号,啦啦啦呵呵呵呜呜呜啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊.",
            textAlign: TextAlign.left,
            maxLines: 1,
            //字符超出一行,显示省略号
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                fontSize: 30,
                decoration: TextDecoration.underline,
                decorationStyle: TextDecorationStyle.solid,
                color: Color.fromARGB(255, 255, 125, 125)),
          ),
        ),*/
        //设置显示位置与颜色
        /* body: Center(
          child: Container(
            child: Text(
              "Hello Bo",
              style: TextStyle(fontSize: 38, color: Colors.purpleAccent),
            ),
            //显示对齐-默认居中
            alignment: Alignment.topLeft,
            height: 400,
            //背景色
            //color: Colors.cyanAccent,
            padding: EdgeInsets.fromLTRB(20, 10, 0, 50),
            margin: EdgeInsets.all(5),
            //渐变-不能和color一起使用
            //BoxDecoration盒子
            decoration: new BoxDecoration(
                //渐变颜色
                gradient: LinearGradient(colors: [
                  Colors.cyanAccent,
                  Colors.deepPurpleAccent,
                  Colors.deepOrange
                ]),
                //设置边框
                border: Border.all(width: 5, color: Colors.limeAccent)),
          ),
        ),*/
        //图片加载-颜色叠加、填充
        body: Center(
          //Container 相当于 h5里面的div
          child: Container(
            child: Image.network(
              "http://img8.zol.com.cn/bbs/upload/23766/23765856.jpg",
              fit: BoxFit.fill,
              //叠加颜色
              color: Colors.deepOrange,
              //叠加的模式
              colorBlendMode: BlendMode.modulate,
            ),
            height: 400,
            width: 500,
            color: Colors.purpleAccent,
          ),
        ),
      ),
    );
  }
}
