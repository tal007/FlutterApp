import 'dart:async';
import 'package:flutter/material.dart';

void main() => runApp(DateTimePickerInfo());

class DateTimePickerInfo extends StatelessWidget {
  const DateTimePickerInfo({Key key, this.title}) : super(key: key);

  final title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Content(),
    );
  }
}

class Content extends StatefulWidget {
  Content({Key key}) : super(key: key);

  _ContentState createState() => _ContentState();
}

class _ContentState extends State<Content> {
  var time = DateTime.now().toString().split(".")[0];
  var _chooseDate;
  var _chooseTime;
  
  _showDatePicker() async {
    var date = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1970),
      lastDate: DateTime(2050)
    );
    print("选择的日期是：$date");
    
    setState((){
      this._chooseDate = date.toString().split(" ")[0];
    });
  }

  _showTimePicker() async {
    var time = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now()
    );
    print("选择的时间是：$time");

    setState(() {
      this._chooseTime = time.toString().split("TimeOfDay(")[1].split(")")[0];
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          RaisedButton(
            child: Text("选择时间"),
            onPressed: () => _showDatePicker(),
          ),
          RaisedButton(
            child: Text("选择日期"),
            onPressed: () => _showTimePicker(),
          ),
          Center(
            child: Column(
              children: <Widget>[
                Text("现在是：$time"),
                Divider(),
                Text(_chooseDate == null ? "请选择时间" : _chooseDate),
                Text(_chooseTime == null ? "请选择时间" : _chooseTime)
              ],
            ),
          )
        ],
      ),
    );
  }
}