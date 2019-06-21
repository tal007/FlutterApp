import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() => runApp(RaisedButtonInfo());

class RaisedButtonInfo extends StatelessWidget {
  const RaisedButtonInfo({Key key, this.title}) : super(key: key);
  final title;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 30
          ),
          child: Column(
            children: <Widget>[
              RaisedButton(
                onPressed: () {},
                child: Text("textColor文本的颜色，color背景颜色，highlightColor按钮按下的颜色"),
                textColor: Color(0xffff0000),
                color: Color(0xfff1f1f1),
                highlightColor: Color(0xff00ff00),
              ),
              RaisedButton(
                onPressed: () {},
                child: Text("disabledTextColor禁用时文本颜色，disabledColor禁用时背景颜色"),
                disabledTextColor: Color(0xff999999),
                disabledColor: Color(0xffff0000),
              ),
              RaisedButton(
                onPressed: () {},
                child: Text("splashColor水波的颜色，disabledColor禁用时背景颜色"),
                splashColor: Color(0xffff0000),
              ),
              RaisedButton(
                onPressed: () {},
                child: Text("colorBrightness按钮主题高亮 Brightness.light"),
                colorBrightness: Brightness.light,
              ),
              RaisedButton(
                onPressed: () {},
                child: Text("colorBrightness按钮主题高亮 Brightness.dark"),
                colorBrightness: Brightness.dark,
              ),
              Container(
                margin: EdgeInsets.only(top: 20.0),
                child: RaisedButton(
                  onPressed: () {},
                  child: Text(
                      "elevation按钮下面的阴影,highlightElevation高亮时候的阴影,disabledElevation按下的时候的阴影"),
                  elevation: 5.0,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20.0),
                child: RaisedButton(
                  onPressed: () {},
                  child: Text(
                      "elevation按钮下面的阴影,highlightElevation高亮时候的阴影,disabledElevation按下的时候的阴影"),
                  highlightElevation: 5,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20.0),
                child: RaisedButton(
                  onPressed: () {},
                  child: Text(
                      "elevation按钮下面的阴影,highlightElevation高亮时候的阴影,disabledElevation按下的时候的阴影"),
                  disabledElevation: 5.0,
                ),
              ),
              RaisedButton(
                onPressed: () {},
                child: Text(
                    "onHighlightChanged 水波纹高亮变化回调,按下返回true,抬起返回false"),
                onHighlightChanged: (bool b) => Fluttertoast.showToast(
                  msg: '$b',
                  toastLength: Toast.LENGTH_LONG,
                  fontSize: 12
                ),
                color: Colors.green,
              ),
              RaisedButton(
                onPressed: () => Fluttertoast.showToast(
                  msg: '你点击了按钮',
                  toastLength: Toast.LENGTH_LONG,
                  fontSize: 12
                ),
                child: Text("onPressed点击事件"),
              ),
            ],
          )
        ),
      ),
    );
  }
}