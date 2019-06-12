import 'package:flutter/material.dart';

void main() => runApp(TextDemo());

class TextDemo extends StatefulWidget {
  TextDemo({Key key}) : super(key: key);

  _TextDemoState createState() => _TextDemoState();
}

class _TextDemoState extends State<TextDemo> {
  TextAlign _textAlign = TextAlign.left;
  TextDirection _textDirection = TextDirection.ltr;
  TextOverflow _textOverflow = TextOverflow.visible;
  
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Column(
        children: <Widget>[
          Container(
            width: 200,
            height: 100,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.blue,
                width: 1,
                style: BorderStyle.solid
              )
            ),
            child: Text(
              '踏浪-所谓天才，不过是每一天的积累成才',
              textAlign: _textAlign,
              textDirection: _textDirection,
              maxLines: 1,
              overflow: _textOverflow,
              textScaleFactor: 2,
              style: TextStyle(
                color: Colors.blue,
                backgroundColor: Colors.red
              ),
            ),
          ),
          ListTile(
            title: Text('textAlign'),
            trailing: DropdownButton(
              value: _textAlign,
              items: TextAlign.values.map((value) => DropdownMenuItem(
                child: Text(value.toString().substring('TextAlign.'.length)),
                value: value
              )).toList(),
              onChanged: (newVal){
                if( newVal != null ){
                  setState(() {
                    _textAlign = newVal;
                  });
                }
              },
            )
          ),
          ListTile(
            title: Text('textDirection'),
            trailing: DropdownButton(
              value: _textDirection,
              items: TextDirection.values.map((value) => DropdownMenuItem(
                child: Text(value.toString().substring('TextDirection.'.length)),
                value: value
              )).toList(),
              onChanged: (newVal){
                if( newVal != null ){
                  setState(() {
                    _textDirection = newVal;
                  });
                }
              },
            )
          ),
          ListTile(
            title: Text('overflow'),
            trailing: DropdownButton(
              value: _textOverflow,
              items: TextOverflow.values.map((value) => DropdownMenuItem(
                child: Text(value.toString().substring('TextOverflow.'.length)),
                value: value
              )).toList(),
              onChanged: (newVal){
                if( newVal != null ){
                  setState(() {
                    _textOverflow = newVal;
                  });
                }
              },
            )
          )
        ],
      ),
    );
  }
}