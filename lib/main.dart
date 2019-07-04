import 'package:flutter/material.dart';
import './home/index.dart';
import 'MaterialApp/index.dart';
import 'Container/index.dart';
import 'Scaffold/index.dart';
import 'RowAndColumn/index.dart';
import 'Image/index.dart';
import 'Text/index.dart';
import 'Icon/index.dart';
import 'RaisedButton/index.dart';
import 'DateTimePicker//index.dart';
import 'TextField/index.dart';

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
        "Row and ColumnInfo": (BuildContext context) => RowAndColumnInfo(title: 'Row and Column Info'),
        "ImageInfo": (BuildContext context) => ImageWidgetInfo(title: 'ImageInfo'),
        "TextInfo": (BuildContext context) => TextInfo(title: 'TextInfo'),
        "IconInfo": (BuildContext context) => IconInfo(title: 'IconInfo'),
        "RaisedButtonInfo": (BuildContext context) => RaisedButtonInfo(title: 'RaisedButtonInfo'),
        "Date Time PickerInfo": (BuildContext context) => DateTimePickerInfo(title: "Date Time Picker Info"),
        "TextFieldInfo": (BuildContext context) => TextFieldInfo(title: "TextField"),
      },
      home: HomeList()
    );
  }
}