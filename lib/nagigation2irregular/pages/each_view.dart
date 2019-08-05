import 'package:flutter/material.dart';

class EachView extends StatefulWidget {
  String _title;
  Widget _widget;

  EachView(this._title, this._widget);

  @override
  _EachViewState createState() => _EachViewState();
}

class _EachViewState extends State<EachView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget._title),
      ),
      body: widget._widget,
    );
  }
}
