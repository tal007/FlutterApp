import 'package:flutter/material.dart';
import 'package:flutterapp/common/CustomTitle.dart';
import './useLocal.dart';
import './useDio.dart';

void mian() => runApp(HTTPInfo());

class HTTPInfo extends StatelessWidget {
  const HTTPInfo({Key key, this.title}) : super(key: key);

  final title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Center(child: CustomTitle(title: "使用自带的请求", fontSize: 20)),
            LocaleHttp(),
            Divider(),
            Center(child: CustomTitle(title: "使用dio请求", fontSize: 20)),
            DioHttp()
          ],
        ),
      )
    );
  }
}