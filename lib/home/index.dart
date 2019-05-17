// 首页的ListView组件
import 'package:flutter/material.dart';
import './item.dart';

void main() => runApp(HomeList());

class HomeList extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        body: Container(
          // padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
          child: new ListView(
            children: <Widget>[
              new Item(text: 'MaterialApp'),
              new Item(text: 'Scaffold')
            ],
          )
        ),
      )
    );
  }
}

