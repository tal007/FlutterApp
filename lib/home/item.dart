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
          Navigator.pushNamed(context, 'materialAppInfo');
        },
        child: Column(
          children: <Widget>[
            Text(
              text,
              style: TextStyle(
                fontSize: 20,
                color: Colors.blue
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