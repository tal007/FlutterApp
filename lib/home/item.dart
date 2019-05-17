import 'package:flutter/material.dart';
import '../materialApp/index.dart';

void main() => runApp(Item());

class Item extends StatelessWidget {
  Item({Key key, this.text}) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
      decoration: new BoxDecoration(
        border: Border.all(
          width: 1,
          color: Colors.grey
        )
      ),
      // color: Colors.cyan,
      child: RaisedButton(
        onPressed: (){
          Navigator.push(context, new MaterialPageRoute(
            builder: (context) => new MaterialAppInfo()
          ));
        },
        child: Text(
          text,
          style: TextStyle(
            fontSize: 26,
            color: Colors.blue
          ),
        ),
      )
    );
  }
}