import 'package:flutter/material.dart';
import '../common/CustomTitle.dart';
import './Alignment.dart';
import './Transform.dart';
import './BoxDecoration.dart';

void main() => runApp(ContainerInfo());

class ContainerInfo extends StatelessWidget {
  ContainerInfo({Key key, this.title}) : super(key: key);
  final String title;

  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(
            vertical: 30,
            horizontal: 20
          ),
          child: Column(
            children: <Widget>[
              Center(child: CustomTitle(title: 'Alignment')),
              AlignmentInfo(),
              Divider(color: Colors.grey),
              Center(child: CustomTitle(title: 'Transform')),
              TransformInfo(),
              Divider(color: Colors.grey),
              Center(child: CustomTitle(title: 'BoxDecoration')),
              BoxDecorationInfo()
            ],
          ),
        )
      ),
    );
  }
}