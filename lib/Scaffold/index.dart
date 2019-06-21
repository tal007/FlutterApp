import 'package:flutter/material.dart';

void main() => runApp(ScaffoldInfo());

class ScaffoldInfo extends StatelessWidget {
  ScaffoldInfo({Key key, this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      bottomNavigationBar: Text('1'),
      body: Container(
        padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
        child: DefaultTabController(
          length: 6,
          child: Scaffold(
            appBar: AppBar(
              title: Text('AppBar'),
              leading: IconButton(
                onPressed: () => {},
                icon: Icon(
                  Icons.nature
                ),
              ),
              automaticallyImplyLeading: true,
              actions: <Widget>[Icon(Icons.book), Icon(Icons.satellite),Center(child: Text('action'))],
              flexibleSpace: Container(
                color: Colors.green,
                alignment: Alignment.center, 
                child: Text("flexibleSpace")
              ),
              bottom: TabBar(
                isScrollable: true,
                tabs: <Widget>[
                  Tab(text: 'Tab 1'),
                  Tab(text: 'Tab 2'),
                  Tab(text: 'Tab 3'),
                  Tab(text: 'Tab 4'),
                  Tab(text: 'Tab 5'),
                  Tab(text: 'Tab 6'),
                ],
              ),
              // elevation: 20,
              backgroundColor: Colors.red,
              brightness: Brightness.dark,
              // centerTitle: true,
            ),
            body: TabBarView(
              children: <Widget>[
                Center(child: Text('Tab 1')),
                Center(child: Text('Tab 2')),
                Center(child: Text('Tab 3')),
                Center(child: Text('Tab 4')),
                Center(child: Text('Tab 5')),
                Center(child: Text('Tab 6')),
              ],
            ),
            floatingActionButton: FloatingActionButton(
              child: Icon(Icons.add),
              onPressed: () => showModalBottomSheet(
                context: context,
                builder: (BuildContext context) {
                    return new Container(
                        height: 300.0,
                        child: Text('弹出的东东'),
                    );
                },
              ).then((val) {
                print(val);
              }),
            ),
            floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
            floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
            // persistentFooterButtons: <Widget>[
            //   Icon(Icons.satellite),
            //   Icon(Icons.save),
            //   Icon(Icons.share),
            // ],
            drawer: Container(
              child: Text('drawer'),
            ),
            endDrawer: Container(
              child: Text('endDrawer'),
            ),
            bottomNavigationBar: BottomAppBar(
              shape: CircularNotchedRectangle(),
              child: Row(
                children: [
                  IconButton(icon: Icon(Icons.home), onPressed: () => {}),
                  SizedBox(), //中间位置空出
                  IconButton(icon: Icon(Icons.business), onPressed: () => {}),
                ],
                mainAxisAlignment: MainAxisAlignment.spaceAround, //均分底部导航栏横向空间
              ),
            ),
            // backgroundColor: Colors.red,
            // bottomSheet: BottomSheet(
            //   builder: (BuildContext context) => Text('bottomSheet，没有使用弹出，直接显示了，显然是不太合理的'),
            //   onClosing: (){},
            // ),
          ),
        )
      )
    );
  }
}

