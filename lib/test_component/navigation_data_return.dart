import 'package:flutter/material.dart';

//Navigator.pop 返回、Scaffold.of(context).showSnackBar(SnackBar(content: Text("返回结果:$result")));(显示内容)
void main() {
  return runApp(MaterialApp(
    title: "页面跳转返回数据",
    home: FirstPage(),
  ));
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('找小姐姐要电话'),
      ),
      body: Center(
        child: RouteButton(),
      ),
    );
  }
}

class RouteButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
        child: Text('去找小姐姐'),
        onPressed: () {
          _navigateToXiaoJieJie(context);
        });
  }

  //async 异步调用
  _navigateToXiaoJieJie(BuildContext context) async {
    final result = await Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => XiaoJieJie(name: "张三", remark: "小姐姐你好啊!")));
    if (result != null) {
      Scaffold.of(context)
          .showSnackBar(SnackBar(content: Text("返回结果:$result")));
    }
  }
}

class XiaoJieJie extends StatelessWidget {
  final String name;
  final String remark;

  XiaoJieJie({Key key, @required this.name, this.remark}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("我是小姐姐..."),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text("名称：$name${remark.isNotEmpty ? ",备注:$remark" : ""}"),
            Expanded(
              child: Container(
                decoration: BoxDecoration(border: Border.all()),
                margin: EdgeInsets.all(5.0),
                child: Column(
                  children: <Widget>[
                    Expanded(
                      child: Image.asset("images/chang_tui.jpg"),
                    ),
                    RaisedButton(
                      child: Text("大长腿小姐姐."),
                      onPressed: () {
                        //返回
                        Navigator.pop(context, '大长腿小姐姐：15863698742');
                      },
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(border: Border.all()),
                margin: EdgeInsets.all(5.0),
                child: Column(
                  children: <Widget>[
                    Expanded(
                      child: Image.asset("images/xiao_m_y.jpg"),
                    ),
                    RaisedButton(
                      child: Text("小蛮腰小姐姐."),
                      onPressed: () {
                        Navigator.pop(context, '小蛮腰小姐姐：13205893698');
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
