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
        padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
        child: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                CustomTitle(title: '说明'),
                Text("正如Flutter官网上面说的一样，MaterialApp是一个非常方便的widget，里面封装了应用程序实现Material Design所需要的widget。"),
                Text("我们可以使用这个组件设置一些App配置，比如App的主题色，App的路由，App的语言读取等等。我们来看看他有哪些属性呢？"),
                CustomTitle(title: '属性说明'),
              ],
            ),
          ],
        )
      ),
    );
  }
}

