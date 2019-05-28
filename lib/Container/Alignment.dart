import 'package:flutter/material.dart';

void main() => runApp(AlignmentInfo());

class AlignmentInfo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AlignmentInfo();
  }
  
}

class _AlignmentInfo extends State<AlignmentInfo> {
  Object position = Alignment.center;
  double _X = 0.0;
  double _Y = 0.0;
  
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Container(
            width: 100,
            height: 100,
            alignment: position,
            margin: EdgeInsets.symmetric(
              vertical: 20,
              horizontal: 0
            ),
            color: Colors.blue,
            child: Text('踏浪', style: TextStyle(
              color: Colors.white,
              fontSize: 20
            )),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              RaisedButton(
                child: Text('topLeft'),
                onPressed: () => setState(() {
                  this.position = Alignment.topLeft;
                  this._X = -1.0;
                  this._Y = -1.0;
                }),
              ),
              RaisedButton(
                child: Text('topCenter'),
                onPressed: () => setState(() {
                  this.position = Alignment.topCenter;
                  this._X = 0.0;
                  this._Y = -1.0;
                }),
              ),
              RaisedButton(
                child: Text('topRight'),
                onPressed: () => setState(() {
                  this.position = Alignment.topRight;
                  this._X = 1.0;
                  this._Y = -1.0;
                }),
              )
            ]
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              RaisedButton(
                child: Text('centerLeft'),
                onPressed: () => setState(() {
                  this.position = Alignment.centerLeft;
                  this._X = -1.0;
                  this._Y = 0.0;
                }),
              ),
              RaisedButton(
                child: Text('center'),
                onPressed: () => setState(() {
                  this.position = Alignment.center;
                  this._X = 0.0;
                  this._Y = 0.0;
                }),
              ),
              RaisedButton(
                child: Text('centerRight'),
                onPressed: () => setState(() {
                  this.position = Alignment.centerRight;
                  this._X = 1.0;
                  this._Y = 0.0;
                }),
              )
            ]
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              RaisedButton(
                child: Text('bottomLeft'),
                onPressed: () => setState(() {
                  this.position = Alignment.bottomLeft;
                  this._X = -1.0;
                  this._Y = 1.0;
                }),
              ),
              RaisedButton(
                child: Text('bottomCenter'),
                onPressed: () => setState(() {
                  this.position = Alignment.bottomCenter;
                  this._X = 0.0;
                  this._Y = 1.0;
                }),
              ),
              RaisedButton(
                child: Text('bottomRight'),
                onPressed: () => setState(() {
                  this.position = Alignment.bottomRight;
                  this._X = 1.0;
                  this._Y = 1.0;
                }),
              )
            ]
          ),
          Container(margin: EdgeInsets.all(10)),
          Text('Alignment X 的坐标'),
          Slider(
            value: _X,
            min: -1.0,
            max: 1.0,
            onChanged: (double value) {
              this.setState(() {
                this._X = value;
                this.position = Alignment(value, _Y);
              });
            },
          ),
          Text('Alignment Y 的坐标'),
          Slider(
            value: _Y,
            min: -1.0,
            max: 1.0,
            onChanged: (double value) {
              this.setState(() {
                this._Y = value;
                this.position = Alignment(_X, value);
              });
            },
          )
        ],
      ),
    );
  }
}