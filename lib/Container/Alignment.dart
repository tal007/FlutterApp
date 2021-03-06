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
  double _xCrood = 0.0;
  double _yCrood = 0.0;
  
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
                child: Text('TL'),
                onPressed: () => setState(() {
                  this.position = Alignment.topLeft;
                  this._xCrood = -1.0;
                  this._yCrood = -1.0;
                }),
              ),
              RaisedButton(
                child: Text('TC'),
                onPressed: () => setState(() {
                  this.position = Alignment.topCenter;
                  this._xCrood = 0.0;
                  this._yCrood = -1.0;
                }),
              ),
              RaisedButton(
                child: Text('TR'),
                onPressed: () => setState(() {
                  this.position = Alignment.topRight;
                  this._xCrood = 1.0;
                  this._yCrood = -1.0;
                }),
              )
            ]
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              RaisedButton(
                child: Text('CL'),
                onPressed: () => setState(() {
                  this.position = Alignment.centerLeft;
                  this._xCrood = -1.0;
                  this._yCrood = 0.0;
                }),
              ),
              RaisedButton(
                child: Text('CC'),
                onPressed: () => setState(() {
                  this.position = Alignment.center;
                  this._xCrood = 0.0;
                  this._yCrood = 0.0;
                }),
              ),
              RaisedButton(
                child: Text('CR'),
                onPressed: () => setState(() {
                  this.position = Alignment.centerRight;
                  this._xCrood = 1.0;
                  this._yCrood = 0.0;
                }),
              )
            ]
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              RaisedButton(
                child: Text('BL'),
                onPressed: () => setState(() {
                  this.position = Alignment.bottomLeft;
                  this._xCrood = -1.0;
                  this._yCrood = 1.0;
                }),
              ),
              RaisedButton(
                child: Text('BC'),
                onPressed: () => setState(() {
                  this.position = Alignment.bottomCenter;
                  this._xCrood = 0.0;
                  this._yCrood = 1.0;
                }),
              ),
              RaisedButton(
                child: Text('BR'),
                onPressed: () => setState(() {
                  this.position = Alignment.bottomRight;
                  this._xCrood = 1.0;
                  this._yCrood = 1.0;
                }),
              )
            ]
          ),
          Container(margin: EdgeInsets.all(10)),
          Text('Alignment X 的坐标'),
          Slider(
            value: _xCrood,
            min: -1.0,
            max: 1.0,
            onChanged: (double value) {
              this.setState(() {
                this._xCrood = value;
                this.position = Alignment(value, _yCrood);
              });
            },
          ),
          Text('Alignment Y 的坐标'),
          Slider(
            value: _yCrood,
            min: -1.0,
            max: 1.0,
            onChanged: (double value) {
              this.setState(() {
                this._yCrood = value;
                this.position = Alignment(_xCrood, value);
              });
            },
          )
        ],
      ),
    );
  }
}