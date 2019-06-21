import 'package:flutter/material.dart';
import 'package:flutterapp/MyIcons/MyIcons.dart';

void main() => runApp(IconInfo());

class IconInfo extends StatelessWidget {
  const IconInfo({Key key, this.title}) : super(key: key);
  final title;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Container(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.speaker,
                  color: Colors.red,
                  size: 100,
                ),Icon(
                  Icons.star_half,
                  color: Colors.blue,
                  size: 100,
                ),Icon(
                  Icons.volume_up,
                  color: Colors.red,
                  size: 100,
                ),Icon(
                  MyIcons.weChat,
                  color: Colors.green,
                  size: 100,
                ),Icon(
                  MyIcons.qq,
                  color: Colors.blue,
                  size: 100,
                )
              ],
            )
          )
        ),
      )
    );
  }
}