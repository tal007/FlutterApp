import 'package:flutter/material.dart';

void main() => runApp(Item());

class Item extends StatelessWidget {
  Item({Key key, this.text}) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 20, 0, 20),
      decoration: new BoxDecoration(
        border: Border.all(
          width: 1,
          color: Colors.grey
        )
      ),
      // color: Colors.cyan,
      child: Text(
        text,
        style: TextStyle(
          fontSize: 26,
          color: Colors.blue
        ),
      ),
    );
  }
}