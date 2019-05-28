import 'package:flutter/material.dart';
import '../MaterialApp/index.dart';
import '../Scaffold/index.dart';

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
        child: Column(
          children: <Widget>[
            Text(
              text,
              style: TextStyle(
                fontSize: 20,
                color: Color.fromARGB(128, 11, 31, 31)
              ),
            ),
            Text(
              text,
              style: TextStyle(
                fontSize: 14,
                color: Colors.blue
              ),
            ),
          ],
        )
      )
    );
  }
}