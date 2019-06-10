// 首页的ListView组件
import 'package:flutter/material.dart';
import './item.dart';

void main() => runApp(HomeList());

var list = [
  "MaterialApp",
  "Scaffold",
  "Container",
  "Row",
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
    return Scaffold(
      //创建一个Bar，并添加文本
      appBar: AppBar(
        title:Text('Welcome to Flutter'),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.list
          ),
          
        ),
        // backgroundColor: Colors.purple,
      ),
      body: Container(
        // padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
        child: new ListView.separated(
          itemCount: list.length,
          itemBuilder: (context, i) {
            return new Item(text: list[i]);
          },
          separatorBuilder: (BuildContext context, int index) => const Divider(),
        )
      )
    );
  }
}