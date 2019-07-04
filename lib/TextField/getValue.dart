import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() => runApp(GetInputValue());

class GetInputValue extends StatefulWidget {
  GetInputValue({Key key}) : super(key: key);

  _GetInputValueState createState() => _GetInputValueState();
}

class _GetInputValueState extends State<GetInputValue> {
  var _controllerValue = '';

  TextEditingController _controller = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          TextField(
            controller: _controller,
          ),
          TextField(
            onChanged: (text){
              setState(() {
                _controllerValue = text;
              });
            },
          ),
          Text(_controllerValue == '' ? "输入框没有值" : _controllerValue),
          RaisedButton(
            child: Text('获取下面输入框的值'),
            onPressed: (){
              if( _controllerValue == "" ){
                Fluttertoast.showToast(
                  msg: "下面的输入框里面没有值"
                );
              }
              _controller.text = _controllerValue;
            },
          ),
          RaisedButton(
            child: Text('设置值为上面输入框的值'),
            onPressed: (){
              if( _controller.text == "" ){
                Fluttertoast.showToast(
                  msg: "上面的输入框里面没有值"
                );
              } else {
                setState(() {
                  _controllerValue = _controller.text;
                });
              }
            },
          )
        ],
      ),
    );
  }
}