import 'package:flutter/material.dart';
import 'customize_route.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      appBar: AppBar(
        title: Text(
          'First Page',
          style: TextStyle(fontSize: 36.0),
        ),
        //跟底部融合,0.0完全融合,默认4.0
        elevation: 4.0,
      ),
      body: Center(
        child: MaterialButton(
          onPressed: () {
            /*Navigator.of(context).push(MaterialPageRoute(
              builder: (BuildContext context) {
                return SecondPage();
              },
            ));*/
            Navigator.of(context).push(CustomizeRoute(SecondPage()));
          },
          child: Icon(
            Icons.navigate_next,
            color: Colors.white,
            size: 64.0,
          ),
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange,
      appBar: AppBar(
        title: Text(
          'Second Page',
          style: TextStyle(fontSize: 36.0),
        ),
        elevation: 4.0,
        //字体会居中
        leading: Container(),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: MaterialButton(
          onPressed: () {
            Navigator.of(context).pop(context);
          },
          child: Icon(
            Icons.navigate_before,
            color: Colors.white,
            size: 64.0,
          ),
        ),
      ),
    );
  }
}
