import 'package:flutter/material.dart';

class Product {
  final String title; //商品标题
  final String description; //商品描述
  Product(this.title, this.description);
}

void main() {
  return runApp(MaterialApp(
    title: "导航数据传递和接收",
    home: ProductView(
        productList: List.generate(
            30, (i) => Product("商品: ${i + 1}", "这是商品详情信息,编号:${i + 1}"))),
  ));
}

class ProductView extends StatelessWidget {
  final List<Product> productList;

  ProductView({Key key, @required this.productList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("商品列表"),
      ),
      body: ListView.builder(
          itemCount: productList.length,
          itemBuilder: (context, index) {
            var product = productList[index];
            return ListTile(
              title: Text("${product.title}"),
              //响应事件
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ProductDetail(product: product)));
              },
            );
          }),
    );
  }
}

class ProductDetail extends StatelessWidget {
  final Product product;

  const ProductDetail({Key key, @required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("商品详情页")),
        body: Center(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
              Text("商品名称：${product.title}"),
              Text("商品详情：${product.description}")
            ])));
  }
}
