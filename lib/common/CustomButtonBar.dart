import 'package:flutter/material.dart';

void main() => runApp(CustomButtonBar());

class CustomButtonBar extends StatelessWidget {
  const CustomButtonBar({Key key, this.children}) : super(key: key);
  final children;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: children,
      ),
    );
  }
}