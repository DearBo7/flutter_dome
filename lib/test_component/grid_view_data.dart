import 'dart:convert' as convert;

import 'package:flutter/material.dart';

void main() {
  String jsonString =
      '[{"title":"一条狗的使命2","url":"https://ss2.baidu.com/6ONYsjip0QIZ8tyhnq/it/u=1544303906,1436479396&fm=58&s=A6D034D3124059ED404D444903008076","source":"豆瓣","score":6.9},{"title":"哪吒之魔童降世","url":"https://ss0.baidu.com/6ONWsjip0QIZ8tyhnq/it/u=3246509238,1077330305&fm=58&s=DFD513C6886286D432620FBC0300301F","source":"豆瓣","score":8.8},{"title":"千与千寻","url":"https://ss1.baidu.com/6ONXsjip0QIZ8tyhnq/it/u=2585813656,2994285865&fm=58&s=C5649A468F378ECC266911AC03008012","source":"豆瓣","score":9.3},{"title":"疾速备战","url":"https://ss0.baidu.com/6ONWsjip0QIZ8tyhnq/it/u=3810485148,1018899080&fm=58&s=33A5B70A9ADE4CDCC48FE6A00300A00F","source":"豆瓣","score":8.1},{"title":"复仇者联盟4","url":"https://ss0.baidu.com/6ONWsjip0QIZ8tyhnq/it/u=3527165871,1016449403&fm=58&s=787B20C402B38BC456651C8D0300E088","source":"豆瓣","score":8.6},{"title":"何以为家","url":"https://ss2.baidu.com/6ONYsjip0QIZ8tyhnq/it/u=1792542740,2813351586&fm=58&s=9AB0008A5427E2FB50380DC00300D0A1","source":"豆瓣","score":9},{"title":"掠食城市:致命引擎","url":"https://ss0.baidu.com/6ONWsjip0QIZ8tyhnq/it/u=4027817979,1213480222&fm=58&s=E560BB46CF22B65D40C0148A0300E093","source":"豆瓣","score":6.4},{"title":"蜘蛛侠:英雄远征","url":"https://ss0.baidu.com/6ONWsjip0QIZ8tyhnq/it/u=2201945553,1752493523&fm=58&s=0155836A43F0BE6D42D0B51B0000E0C1","source":"豆瓣","score":7.9},{"title":"疾速特攻","url":"https://ss0.baidu.com/6ONWsjip0QIZ8tyhnq/it/u=1802517441,2145936691&fm=58&s=4C73A8440FB391D85AE9C81301005091","source":"豆瓣","score":7.5},{"title":"阿丽塔:战斗天使","url":"https://ss2.baidu.com/6ONYsjip0QIZ8tyhnq/it/u=2801239214,2575519245&fm=58","source":"豆瓣","score":7.5},{"title":"流浪地球","url":"https://ss1.baidu.com/6ONXsjip0QIZ8tyhnq/it/u=3895436776,1493313546&fm=58&s=C115C730589647FF5E89F0C5030070A1","source":"豆瓣","score":7.9},{"title":"NO GAME NO LIFE 游戏人生 ZERO","url":"https://ss1.baidu.com/6ONXsjip0QIZ8tyhnq/it/u=3464557834,923614171&fm=58&s=616123A8C22381E700A46A9B03005086","source":"豆瓣","score":8.3},{"title":"AV大病院~白衣の下はスッポンポン!","url":"https://ss1.baidu.com/6ONXsjip0QIZ8tyhnq/it/u=1762154713,2250388038&fm=58&s=EE147C8F6ED34FF10A1D38FE0300703A","source":"豆瓣","score":0},{"title":"无问西东","url":"https://ss1.baidu.com/6ONXsjip0QIZ8tyhnq/it/u=4000226290,1375501172&fm=58&s=2BEC7A22C8B3A9AF67B96125000030E0","source":"豆瓣","score":7.6},{"title":"唐人街探案2","url":"https://ss2.baidu.com/6ONYsjip0QIZ8tyhnq/it/u=2902217750,1702414084&fm=58&s=D78EEEAE4453CBED3C8B5CB30300E00B#","source":"豆瓣","score":6.7},{"title":"蜘蛛侠:英雄归来","url":"https://ss2.baidu.com/6ONYsjip0QIZ8tyhnq/it/u=1541627657,2068339724&fm=58&s=DB04468C58026EDAD0AC2CA00300E092","source":"豆瓣","score":7.4}]';
  List dynamicList = convert.jsonDecode(jsonString);
  List<MovieData> list = new List();
  for (var item in dynamicList) {
    list.add(MovieData.fromJson(item));
  }
  /*for (var item in dynamicList) {
    list.add(MovieData.fromJson(item));
  }*/
  return runApp(MyApp(gridViewList: list));
}

class MyApp extends StatelessWidget {
  final List<MovieData> gridViewList;

  MyApp({Key key, @required this.gridViewList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Grid View Dome"),
        ),
        body: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              //一行显示多少
              crossAxisCount: 3,
              //上下间隔,不计算第一行的上间隔
              mainAxisSpacing: 1.0,
              //左右间隔
              crossAxisSpacing: 2.0,
              //宽高缩放比列:0.7=4:3,2:宽是高的2倍
              childAspectRatio: 0.7,
            ),
            itemCount: gridViewList.length,
            itemBuilder: (context, index) {
              var item = gridViewList[index];
              return new Column(
                //左右-默认CrossAxisAlignment.center
                crossAxisAlignment: CrossAxisAlignment.center,
                //上下-默认MainAxisAlignment.start
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                      child: Container(
                    padding: EdgeInsets.fromLTRB(0, 5.0, 0, 0),
                    child: new Image.network("${item.url}", fit: BoxFit.fill),
                  )),
                  new Text(
                    "${index + 1}-${item.title}",
                    style: TextStyle(color: Colors.blue, fontSize: 14.0),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  new Text(
                    "${item.source}:${item.score == 0 ? "暂无评分" : item.score}",
                    style: TextStyle(
                        color: Color.fromRGBO(102, 102, 102, 1),
                        fontSize: 13.0),
                  )
                ],
              );
            }),
        /*body: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            //一行显示多少
              crossAxisCount: 3,
              //上下间隔
              mainAxisSpacing: 2.0,
              //左右间隔
              crossAxisSpacing: 5.0,
              //宽高缩放比列:0.7=4:3,2:宽是高的2倍
              childAspectRatio: 0.63),
          children: <Widget>[
            new Column(
              //左右-默认CrossAxisAlignment.center
              //crossAxisAlignment: CrossAxisAlignment.center,
              //上下-默认MainAxisAlignment.start
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Image.network(
                    "https://ss2.baidu.com/6ONYsjip0QIZ8tyhnq/it/u=1544303906,1436479396&fm=58&s=A6D034D3124059ED404D444903008076",
                    fit: BoxFit.fill),
                new Text("一条狗的使命2",
                    style: TextStyle(color: Colors.blue, fontSize: 14.0)),
                new Text(
                  "豆瓣:6.9",
                  style: TextStyle(
                      color: Color.fromRGBO(102, 102, 102, 1), fontSize: 13.0),
                )
              ],
            ),
            */ /*new Image.network(
              "https://ss2.baidu.com/6ONYsjip0QIZ8tyhnq/it/u=1544303906,1436479396&fm=58&s=A6D034D3124059ED404D444903008076",
              fit: BoxFit.fill,
            ),
            new Image.network(
              "https://ss0.baidu.com/6ONWsjip0QIZ8tyhnq/it/u=3246509238,1077330305&fm=58&s=DFD513C6886286D432620FBC0300301F",
              fit: BoxFit.fill,
            ),
            new Image.network(
              "https://ss1.baidu.com/6ONXsjip0QIZ8tyhnq/it/u=2585813656,2994285865&fm=58&s=C5649A468F378ECC266911AC03008012",
              fit: BoxFit.fill,
            ),
            new Image.network(
              "https://ss0.baidu.com/6ONWsjip0QIZ8tyhnq/it/u=3810485148,1018899080&fm=58&s=33A5B70A9ADE4CDCC48FE6A00300A00F",
              fit: BoxFit.fill,
            ),
            new Image.network(
              "https://ss0.baidu.com/6ONWsjip0QIZ8tyhnq/it/u=3527165871,1016449403&fm=58&s=787B20C402B38BC456651C8D0300E088",
              fit: BoxFit.fill,
            ),
            new Image.network(
              "https://ss2.baidu.com/6ONYsjip0QIZ8tyhnq/it/u=1792542740,2813351586&fm=58&s=9AB0008A5427E2FB50380DC00300D0A1",
              fit: BoxFit.fill,
            ),
            new Image.network(
              "https://ss0.baidu.com/6ONWsjip0QIZ8tyhnq/it/u=4027817979,1213480222&fm=58&s=E560BB46CF22B65D40C0148A0300E093",
              fit: BoxFit.fill,
            ),*/ /*
            */ /*new Text("啦啦啦1", style: TextStyle(color: Colors.deepOrange)),
            new Text("啦啦啦2", style: TextStyle(color: Colors.amber)),
            new Text("啦啦啦3", style: TextStyle(color: Colors.purpleAccent)),
            new Text("啦啦啦4", style: TextStyle(color: Colors.cyanAccent)),
            new Text("啦啦啦5", style: TextStyle(color: Colors.lime)),
            new Text("啦啦啦6", style: TextStyle(color: Colors.red)),
            new Text("啦啦啦7", style: TextStyle(color: Colors.deepPurple)),*/ /*
          ],
        ),*/
      ),
    );
  }
}

/*@JsonSerializable()
class MovieData {
  String url;
  String title;
  String source;
  double score;

  MovieData({this.url, this.title, this.source, this.score});
}*/
//https://javiercbk.github.io/json_to_dart/ 可以通过加入json,生成实体类
class MovieData {
  String title;
  String url;
  String source;
  num score;

  MovieData({this.title, this.url, this.source, this.score});

  MovieData.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    url = json['url'];
    source = json['source'];
    score = json['score'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['url'] = this.url;
    data['source'] = this.source;
    data['score'] = this.score;
    return data;
  }
}
