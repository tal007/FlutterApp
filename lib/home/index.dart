// 首页的ListView组件
import 'package:flutter/material.dart';
import './item.dart';

void main() => runApp(HomeList());

var list = [
  "MaterialApp",
  "Container",
  "Row and Column",
  "Image",
  "Text",
  "Icon",
  "RaisedButton",
  "Scaffold",
  "Appbar",
  "FlutterLogo",
  "Placeholder"
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
          onPressed: (){
            AlertDialog(title: Text("1"));
          },
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