import 'package:flutter/material.dart';

void main() => runApp(Item());

class Item extends StatelessWidget {
  Item({Key key, this.text}) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FlatButton(
        onPressed: (){
          // 动态的跳转路由
          Navigator.pushNamed(context, '$text'+'Info');
        },
        child: ListTile(
          leading: Icon(Icons.star),
          title: Text(text, style: TextStyle(
            fontWeight: FontWeight.w600
          )),
          subtitle: Text("Flutter Widget $text 说明"),
          trailing: Icon(Icons.arrow_forward_ios),
        )
      )
    );
  }
}