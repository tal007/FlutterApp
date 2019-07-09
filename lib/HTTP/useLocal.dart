import 'dart:io';
import 'dart:convert';

import 'package:flutter/material.dart';

void main() => runApp(LocaleHttp());

class LocaleHttp extends StatefulWidget {
  LocaleHttp({Key key}) : super(key: key);

  _LocaleHttpState createState() => _LocaleHttpState();
}

class _LocaleHttpState extends State<LocaleHttp> {
  var data;
  Map _person = {
    "name": "点击按钮开始请求",
    "sex": -1,
    "joinTime": "点击按钮开始请求",
    "email": "点击按钮开始请求"
  };


  _getData() async {
    var url = "http://rap2api.taobao.org/app/mock/162174/common/content";
    var httpClient = new HttpClient();

    String result;
    try {
      var request = await httpClient.getUrl(Uri.parse(url));
      var response = await request.close();
      // 上面的两个一步执行完成后在来执行下面的判断
      if( response.statusCode == HttpStatus.ok ) {
        // 如果返回的状态是 200 那么请求成功
        var json = await response.transform(utf8.decoder).join();
        var data = jsonDecode(json);
        result = data['data'][0]["description"];
      }
    } catch(err) {
      result = "Some Error";
    }
    
    setState(() {
      data = result;
    });
  }

  _getPerson() async {
    var httpClient = new HttpClient();
    var uri = new Uri.http('rap2api.taobao.org', "app/mock/162174/common/get-test", {
      "id": "1"
    });

    Map result = new Map();
    setState(() {
      _person = {
        "name": "请求中",
        "sex": -2,
        "joinTime": "请求中",
        "email": "请求中"
      };
    });
    try {
      var request = await httpClient.getUrl(uri);
      var response = await request.close();
      // 上面的两个一步执行完成后在来执行下面的判断
      if( response.statusCode == HttpStatus.ok ) {
        // 如果返回的状态是 200 那么请求成功
        var json = await response.transform(utf8.decoder).join();
        var data = jsonDecode(json)["res"];
        result = data;
      }
    } catch(err) {
      result = {
        "name": "请求失败",
        "sex": -1,
        "joinTime": "请求失败",
        "email": "请求失败"
      };
    }
    
    setState(() {
      _person = result;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          RaisedButton(
            child: Text('获取数据'),
            onPressed: _getData,
          ),
          Text(data == null ? "空" : data),
          RaisedButton(
            child: Text('获取人物信息'),
            onPressed: _getPerson,
          ),
          Text(_person["name"]),
          Text(_person["sex"].toString()),
          Text(_person["joinTime"]),
          Text(_person["email"]),
        ],
      ),
    );
  }
}