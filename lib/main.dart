import 'package:flutter/material.dart';
import './home/index.dart';
import 'MaterialApp/index.dart';
import 'Container/index.dart';
import 'Scaffold/index.dart';
import 'RowAndColumn/index.dart';
import 'Image/index.dart';

// 主函数，入口函数
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "Learn Flutter",
      color: Colors.red,
      theme: ThemeData(
        primaryColor: Colors.blue
      ),
      routes: {
        "MaterialAppInfo": (BuildContext context) => MaterialAppInfo(title: 'MaterialAppInfo'),
        "ContainerInfo": (BuildContext context) => ContainerInfo(title: 'ContainerInfo'),
        "ScaffoldInfo": (BuildContext context) => ScaffoldInfo(title: 'ScaffoldInfo'),
        "RowInfo": (BuildContext context) => RowAndColumnInfo(title: 'RowInfo'),
        "ImageInfo": (BuildContext context) => ImageWidgetInfo(title: 'ImageInfo'),
      },
      home: HomeList()
    );
  }
}