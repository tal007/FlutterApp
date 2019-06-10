import 'package:flutter/material.dart';
import 'package:flutterapp/common/CustomTitle.dart';

void main() => runApp(ImageWidgetInfo());

class ImageWidgetInfo extends StatelessWidget {
  const ImageWidgetInfo({Key key, this.title}) : super(key: key);
  final title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(
          vertical: 30,
          horizontal: 20
        ),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Center(child: CustomTitle(title: 'AssetImage')),
              Image(
                image: AssetImage('images/logo.png'),
                width: 100,
                height: 100,
                alignment: Alignment.center,
                repeat: ImageRepeat.repeat,
                // fit: BoxFit.cover,
                filterQuality: FilterQuality.low,
              ),
              Center(child: CustomTitle(title: 'FileImage')),
            ],
          ),
        ),
      ),
    );
  }
}