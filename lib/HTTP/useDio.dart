import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

void main() => runApp(DioHttp());

class DioHttp extends StatefulWidget {
  DioHttp({Key key}) : super(key: key);

  _DioHttpState createState() => _DioHttpState();
}

class _DioHttpState extends State<DioHttp> {
  var data;
  Map _person = {
    "name": "点击按钮开始请求",
    "sex": -1,
    "joinTime": "点击按钮开始请求",
    "email": "点击按钮开始请求"
  };


  _getData() async {
    var url = "http://rap2api.taobao.org/app/mock/162174/common/content";
    Dio dio = new Dio();

    String result;
    try {
      Response response = await dio.get(url);
      print(response.data["data"]);
      // 不要使用 response.data.data[0].description 这样的形势，获取不到
      result = response.data["data"][0]["description"];
    } catch(err) {
      result = "Some Error";
    }
    
    setState(() {
      data = result;
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
          Text(data == null ? "空" : data)
        ],
      ),
    );
  }
}