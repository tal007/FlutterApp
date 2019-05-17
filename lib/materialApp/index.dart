// 首页的ListView组件
import 'package:flutter/material.dart';

void main() => runApp(MaterialAppInfo());

class MaterialAppInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
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

