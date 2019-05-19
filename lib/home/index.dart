// 首页的ListView组件
import 'package:flutter/material.dart';
import './item.dart';

void main() => runApp(HomeList());

var list = [
  "MaterialApp",
  "Scaffold",
  "Scaffold",
  "Scaffold",
  "Scaffold",
  "Scaffold",
  "Scaffold",
  "Scaffold",
  "Scaffold",
  "Scaffold",
  "Scaffold",
  "Scaffold",
];

class HomeList extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        body: Container(
          // padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
          child: new ListView.builder(
            itemCount: list.length,
            itemBuilder: (context, i) {
              return new Item(text: list[i]);
            },
            // separatorBuilder: (BuildContext context, int index) => const Divider(),
          )
        ),
      )
    );
  }
}