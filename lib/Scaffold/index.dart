// 首页的ListView组件
import 'package:flutter/material.dart';

void main() => runApp(ScaffoldInfo());

class ScaffoldInfo extends StatelessWidget {
  ScaffoldInfo({Key key, this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Container(
          // padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
          child: RaisedButton(
            onPressed: (){
              Navigator.pop(context);
            },
            child: Text(
              '踏浪'
            ),
          ),
        ),
      )
    );
  }
}

