import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

void main() => runApp(TransformInfo());

class TransformInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: <Widget>[
            Container(
              width: 150,
              height: 150,
              margin: EdgeInsets.symmetric(
                vertical: 20
              ),
              color: Color.fromRGBO(255, 0, 0, 0.8),
              alignment: Alignment.center,
              child: Text('踏浪', style: TextStyle(
                color: Color(0xFFFFFFFF),
                fontSize: 20
              )),
              transform: Matrix4.rotationZ(0.5)
            ),
            Text('因为我对矩阵方面的知识确实不太擅长，所以想要了解更多关于FLutter 矩阵中的知识，点击下面的链接查看更多。'),
            FlatButton(
              padding: EdgeInsets.symmetric(
                vertical: 50
              ),
              onPressed: () => Navigator.push(context, MaterialPageRoute(
                builder: (context) => new WebviewScaffold(
                  url: 'https://juejin.im/post/5be2fd9e6fb9a04a0e2cace0',
                  appBar: AppBar(
                    title: Text('Flutter Matrix4 矩阵详解'),
                  ),
                ),
              )),
              child: Text(
                'https://juejin.im/post/5be2fd9e6fb9a04a0e2cace0',
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
            ),
            Text('这里还有一点需要注意，那就是使用 transform 属性后，元素仍然占据着原来的空间，从上面的文字在红色矩形上面就可以看出'),
            Container(margin: EdgeInsets.only(
              bottom: 50
            ))
          ],
        ),
      ),
    );
  }
}