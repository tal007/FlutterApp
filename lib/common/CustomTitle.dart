import 'package:flutter/material.dart';

void main() => runApp(CustomTitle());

class CustomTitle extends StatelessWidget {
  CustomTitle({Key key, this.title, this.fontSize: 30.0}) : super(key: key);
  final String title;
  final double fontSize;
  @override
  Widget build(BuildContext content) {
    return Text(
      title,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: FontWeight.bold,
      ),
      textAlign: TextAlign.start,
    );
  }
}