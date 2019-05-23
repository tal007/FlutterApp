// 首页的ListView组件
import 'package:flutter/material.dart';
import '../common/CustomTitle.dart';

void main() => runApp(MaterialAppInfo());

class MaterialAppInfo extends StatelessWidget {
  MaterialAppInfo({Key key, this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
          ),
        )
      ),
      body: Container(
        // padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
        child: Column(
          children: <Widget>[
            Column(
              children: <Widget>[
                CustomTitle(title: '说明')
              ],
            ),
            Text('1'),
            Text('1'),
          ],
        )
      ),
    );
  }
}

