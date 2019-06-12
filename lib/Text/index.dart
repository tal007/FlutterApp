import 'package:flutter/material.dart';
import 'package:flutterapp/common/CustomTitle.dart';
import './textDemo.dart';

void main() => runApp(TextInfo());

String text = '所谓天才，不过是每一天的积累成才';

class TextInfo extends StatelessWidget {
  const TextInfo({Key key, this.title}) : super(key: key);
  final title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(
          vertical: 30,
          horizontal: 20
        ),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Center(child: CustomTitle(title: "Text Widget")),
              TextDemo(),
              Center(child: Text(text, style: TextStyle(
                decoration: TextDecoration.lineThrough,
                decorationColor: Colors.red,
                decorationStyle: TextDecorationStyle.dotted,
                fontSize: 20,
              ))),
              Center(child: Text(text, style: TextStyle(
                decoration: TextDecoration.overline,
                decorationStyle: TextDecorationStyle.dashed,
                fontSize: 20,
              ))),
              Center(child: Text(text, style: TextStyle(
                decoration: TextDecoration.underline,
                decorationStyle: TextDecorationStyle.wavy,
                fontSize: 20,
                decorationColor: Colors.green
              ))),
            ],
          ),
        ),
      ),
    );
  }
}