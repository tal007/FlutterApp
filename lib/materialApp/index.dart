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
        alignment: Alignment.center,
        padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
        child: Center(
          child: ListView(
            children: <Widget>[
              Center(
                child: CustomTitle(title: '说明'),
              ),
              Text("正如Flutter官网上面说的一样，MaterialApp是一个非常方便的widget，里面封装了应用程序实现Material Design所需要的widget。"),
              Text("我们可以使用这个组件设置一些App配置，比如App的主题色，App的路由，App的语言读取等等。"),
              Text("MaterialApp 拥有很多的属性，因为 MaterialApp 一般是作为项目入口文件才使用，所以大部分属性都和项目配置有关，还有一些事关于调试的配置。我们介绍几个常用的。"),
              Divider(),
              CustomTitle(title: 'home', fontSize: 26),
              Text("home属性主要是作为MaterialApp下面默认的首页显示。"),
              Divider(),
              CustomTitle(title: 'initialRoute', fontSize: 26),
              Text("初始路由，当用户进入程序时，自动打开对应的路由。 (home还是位于一级) 传入的是上面routes的key 跳转的是对应的Widget（如果该Widget有Scaffold.AppBar,并不做任何修改，左上角有返回键）"),
              Divider(),
              CustomTitle(title: 'routes', fontSize: 26),
              Text("声明程序中有哪个通过Navigation.of(context).pushNamed跳转的路由 参数是一个JSON对象，以键值对的形式传递 key:路由名字 value:对应的Widget"),
              Divider(),
              CustomTitle(title: 'locale', fontSize: 26),
              Text("如果你的项目涉及到了多语言，那么你可能需要用到这个属性"),
              Divider(),
              CustomTitle(title: 'title', fontSize: 26),
              Text("该标题出现在 Android：任务管理器的程序快照之上 IOS: 程序切换管理器中"),
              Divider(),
              CustomTitle(title: 'color', fontSize: 26),
              Text("该颜色为Android中程序切换中应用图标背景的颜色，当应用图标背景为透明时"),
              Divider(),
              CustomTitle(title: 'theme', fontSize: 26),
              Text("应用程序的主题，使用ThemeData类进行配置，各种的定制颜色都可以设置，用于程序主题切换"),
            ],
          ),
        )
      ),
    );
  }
}

