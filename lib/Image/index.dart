import 'package:flutter/material.dart';
import 'package:flutterapp/common/CustomTitle.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import './imagePicker.dart';
import './imageBoxFit.dart';

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
        padding: EdgeInsets.symmetric(
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
                // color: Colors.red,
                filterQuality: FilterQuality.low,
              ),
              Divider(height: 20),
              Center(child: CustomTitle(title: 'FileImage')),
              Text('如果是使用 FileImage 的话，更多的可能是你从手机相册或者是通过相机拍了一张照片，然后展示出来。因为我也不知道你的手机上面有什么样的照片，所以这里我们还是直接通过选择图片来展示。如果需要我要选择图片或者是使用相机，我们可以使用一个插件'),
              FlatButton(
                onPressed: () => Navigator.push(context, MaterialPageRoute(
                  builder: (context) => WebviewScaffold(
                    url: 'https://pub.dev/packages/image_picker',
                    appBar: AppBar(
                      title: Text('image_picker'),
                    ),
                  )
                )),
                child: Text('https://pub.dev/packages/image_picker', style: TextStyle(
                  color: Colors.blue,
                )),
              ),
              Text("按照文档上面的说明进行一番配置后你就可以使用了。"),
              ImagePickerDemo(),
              Divider(height: 20),
              Center(child: CustomTitle(title: 'NetworkImage')),
              Image(
                image: NetworkImage('https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=324769017,4079415235&fm=26&gp=0.jpg'),
                // color: Colors.red,
              ),
              Center(child: CustomTitle(title: 'FadeInImage')),
              FadeInImage.assetNetwork(
                placeholder: 'images/logo.png',
                image: 'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=324769017,4079415235&fm=26&gp=0.jpg',
                width: 120,
                fit: BoxFit.fitWidth,
              ),
              Divider(height: 20),
              Center(child: CustomTitle(title: 'with color and colorBlendMode', fontSize: 16)),
              Image(
                image: AssetImage('images/logo.png'),
                width: 100,
                height: 100,
                alignment: Alignment.center,
                fit: BoxFit.cover,
                color: Colors.blue,
                colorBlendMode: BlendMode.colorBurn,
              ),
              Text("更多 color 与 colorBlendMode 的使用查看"),
              FlatButton(
                child: Text('https://blog.csdn.net/chenlove1/article/details/84574237', style: TextStyle(color: Colors.blue),),
                onPressed: () => Navigator.push(context, MaterialPageRoute(
                  builder: (context) => WebviewScaffold(
                    appBar: AppBar(
                      title: Text('Flutter BlendMode混合模式详解'),
                    ),
                    url: 'https://blog.csdn.net/chenlove1/article/details/84574237'
                  )
                )),
              ),
              Divider(height: 20),
              Center(child: CustomTitle(title: 'BoxFit')),
              ImageBoxFit()
            ],
          ),
        ),
      ),
    );
  }
}