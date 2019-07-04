import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() => runApp(InuptStyle());

class InuptStyle extends StatefulWidget {
  InuptStyle({Key key}) : super(key: key);

  _InuptStyleState createState() => _InuptStyleState();
}

class _InuptStyleState extends State<InuptStyle> {
  // 输入字数限制
  var _inputLength = 0;
  var _maxWords = 16;

  
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          TextField(
            decoration: InputDecoration(
              icon: Icon(Icons.person),
              labelText: '手机号',
              labelStyle: TextStyle(
                color: Colors.red
              ),
              helperText: "用于下方的提示：请输入手机号",
              prefixText: "+86"
            ),
            textInputAction: TextInputAction.next,
            keyboardType: TextInputType.phone
          ),
          TextField(
            decoration: InputDecoration(
              icon: Icon(Icons.lock),
              labelText: '密码',
              helperText: "用于下方的提示：请输入密码",
              helperStyle: TextStyle(
                color: Colors.green
              ),
              hintText: "输入框的提示文字",
              suffixIcon: Icon(Icons.remove_red_eye)
            ),
            keyboardType: TextInputType.text
          ),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.red,
                  width: 10
                )
              ),
              icon: Icon(Icons.recent_actors),
              labelText: '输入字数限制',
              hintText: "输入框的提示文字",
              suffixIcon: Icon(Icons.remove_red_eye),
              counterText: "$_inputLength/$_maxWords"
            ),
            maxLength: _maxWords,
            onChanged: (text){
              if( text.length > 16 ){
                Fluttertoast.showToast(
                  msg: "输入超出长度限制"
                );
              } else {
                setState(() {
                  _inputLength = text.length;
                });
              }
            },
            keyboardType: TextInputType.text
          )
        ],
      ),
    );
  }
}