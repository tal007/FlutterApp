import 'package:flutter/material.dart';

void main() => runApp(CustomTitle());

class CustomTitle extends StatelessWidget {
  CustomTitle({Key key, this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext content) {
    return Text(title, style: TextStyle(
      fontSize: 20.0,
      fontWeight: FontWeight.bold
    ));
  }
}