import 'package:flutter/material.dart';
import 'package:flutterapp/common/CustomTitle.dart';
import './RowAndColumn.dart';

void main() => runApp(RowAndColumnInfo());

class RowAndColumnInfo extends StatelessWidget {
  const RowAndColumnInfo({Key key, this.title}) : super(key: key);
  final title;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(
              vertical: 30,
              horizontal: 20
            ),
            child: Column(
              children: <Widget>[
                Center(child: CustomTitle(title: "说明")),
                Text("Row是一个布局Widget，相当于是前端CSS3中弹性盒模型布局中：flex-direction: row;作用就是使内容水平方向排列。"),
                Center(child: CustomTitle(title: "举个栗子")),
                RowAndColumnDetail()
              ],
            ),
          ),
        )
      ),
    );
  }
}