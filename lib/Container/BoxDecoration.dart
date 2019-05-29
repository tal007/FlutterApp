import 'package:flutter/material.dart';

void main() => runApp(BoxDecorationInfo());

class BoxDecorationInfo extends StatefulWidget {
  BoxDecorationInfo({Key key}) : super(key: key);

  _BoxDecorationInfoState createState() => _BoxDecorationInfoState();
}

class _BoxDecorationInfoState extends State<BoxDecorationInfo> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Column(
         children: <Widget>[
           Text('设置背景，边框和圆角'),
           Container(
             width: 300,
             height: 300,
             decoration: BoxDecoration(
               color: Colors.red,
               border: Border.all(
                 color: Colors.black,
                 width: 10
               ),
               borderRadius: BorderRadius.all(Radius.circular(50))
             ),
           ),
           Text('设置背景图片'),
           Container(
             width: 300,
             height: 300,
             decoration: BoxDecoration(
               color: Colors.red,
               border: Border.all(
                 color: Colors.black,
                 width: 10
               ),
               borderRadius: BorderRadius.all(Radius.circular(50)),
               image: DecorationImage(
                 image: NetworkImage('https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=324769017,4079415235&fm=26&gp=0.jpg'),
               )
             ),
           ),
           Text('设置背景图片-colorFilter'),
           Container(
             width: 300,
             height: 300,
             decoration: BoxDecoration(
               color: Colors.red,
               border: Border.all(
                 color: Colors.black,
                 width: 10
               ),
               borderRadius: BorderRadius.all(Radius.circular(50)),
               image: DecorationImage(
                 image: NetworkImage('https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=324769017,4079415235&fm=26&gp=0.jpg'),
                 colorFilter: ColorFilter.mode(Colors.red, BlendMode.screen),
                 fit: BoxFit.cover
               )
             ),
           ),
           Text('ShapeDecoration'),
           Container(
             width: 300,
             height: 300,
             decoration: ShapeDecoration(
               color: Colors.red,
               shape: Border.all(
                 color: Colors.black,
                 width: 10
               ) + Border.all(
                 color: Colors.blue,
                 width: 10
               ) + Border.all(
                 color: Colors.green,
                 width: 10
               ),
               image: DecorationImage(
                 image: NetworkImage('https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=324769017,4079415235&fm=26&gp=0.jpg'),
                 colorFilter: ColorFilter.mode(Colors.red, BlendMode.screen),
                 fit: BoxFit.cover
               )
             ),
           ),
           Text('FlutterLogoDecoration'),
           Container(
             width: 300,
             height: 300,
             decoration: FlutterLogoDecoration(
               darkColor: Colors.red,
               lightColor: Colors.green,
               textColor: Colors.green
             ),
           ),
           Text('UnderlineTabIndicator'),
           Container(
             width: 300,
             height: 300,
             decoration: UnderlineTabIndicator(
               borderSide: BorderSide(
                 width: 10,
                 color: Colors.red
               )
             ),
           ),
           Text('UnderlineTabIndicator'),
           Container(
             width: 300,
             height: 300,
             foregroundDecoration: FlutterLogoDecoration(
               darkColor: Colors.red,
               lightColor: Colors.green,
               textColor: Colors.green
             ),
           ),
         ],
       ),
    );
  }
}