import 'package:flutter/material.dart';
import 'package:flutterapp/common/CustomTitle.dart';
import './getValue.dart';
import './inputStyle.dart';

void main() => runApp(TextFieldInfo());

class TextFieldInfo extends StatelessWidget {
  const TextFieldInfo({Key key, this.title}) : super(key: key);

  final title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            CustomTitle(title: "获取输入值"),
            GetInputValue(),
            Divider(height: 50, color: Colors.red),
            CustomTitle(title: "样式修饰"),
            InuptStyle()
          ],
        ),
      )
    );
  }
}