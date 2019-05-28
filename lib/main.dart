import 'package:flutter/material.dart';
import './home/index.dart';
import 'MaterialApp/index.dart';
import 'Container/index.dart';

// 主函数，入口函数
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      // title: "Learn Flutter",
      routes: {
        "MaterialAppInfo": (BuildContext context) => MaterialAppInfo(title: 'MaterialAppInfo'),
        'ContainerInfo': (BuildContext context) => ContainerInfo(title: 'ContainerInfo')
      },
      home: HomeList()
    );
  }
}