import 'package:flutter/material.dart';
import './home/index.dart';
import 'MaterialApp/index.dart';

// 主函数，入口函数
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      // title: "Learn Flutter",
      routes: {
        "materialAppInfo": (BuildContext context) => MaterialAppInfo(title: 'materialAppInfo')
      },
      home: HomeList()
    );
  }
}