import 'package:flutter/material.dart';

void main() => runApp(RowAndColumnDetail());

class RowAndColumnDetail extends StatefulWidget {
  RowAndColumnDetail({Key key}) : super(key: key);

  _RowAndColumnDetailState createState() => _RowAndColumnDetailState();
}

class _RowAndColumnDetailState extends State<RowAndColumnDetail> {
  bool _isRow = true;
  MainAxisAlignment _mainAxisAlignment = MainAxisAlignment.start;
  CrossAxisAlignment _crossAxisAlignment = CrossAxisAlignment.start;
  MainAxisSize _mainAxisSize = MainAxisSize.max;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            color: Colors.yellow,
            height: 300,
            child: _isRow
            ? Row(
              mainAxisAlignment: _mainAxisAlignment,
              crossAxisAlignment: _crossAxisAlignment,
              textBaseline: TextBaseline.alphabetic,
              mainAxisSize: _mainAxisSize,
              children: <Widget>[
                Icon(Icons.stars, size: 50),
                Icon(Icons.star, size: 50),
                Icon(Icons.stars, size: 50),
              ],
            )
            : Column(
              mainAxisAlignment: _mainAxisAlignment,
              crossAxisAlignment: _crossAxisAlignment,
              textBaseline: TextBaseline.alphabetic,
              mainAxisSize: _mainAxisSize,
              children: <Widget>[
                Icon(Icons.stars, size: 50),
                Icon(Icons.star, size: 50),
                Icon(Icons.stars, size: 50),
              ],
            ),
          ),
          Container(
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Radio(
                          value: true,
                          groupValue: _isRow,
                          onChanged: (bool value){
                            setState(() {
                              this._isRow = value;
                            });
                          },
                        ),
                        Text("Row")
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Radio(
                          value: false,
                          groupValue: _isRow,
                          onChanged: (bool value){
                            setState(() {
                              this._isRow = value;
                            });
                          },
                        ),
                        Text("Column")
                      ],
                    )
                  ],
                ),
                ListTile(
                  title: Text("mainAxisAlignment"),
                  trailing: DropdownButton(
                    value: _mainAxisAlignment,
                    items: MainAxisAlignment.values.map((v) => DropdownMenuItem(
                      value: v,
                      child: Text(v.toString().substring('MainAxisAlignment.'.length)),
                    )).toList(),
                    onChanged: (newVal){
                      if( newVal != null ){
                        setState(() {
                          this._mainAxisAlignment = newVal;
                        });
                      }
                    },
                  ),
                ),
                ListTile(
                  title: Text("crossAxisAlignment"),
                  trailing: DropdownButton(
                    value: _crossAxisAlignment,
                    items: CrossAxisAlignment.values.map((v) => DropdownMenuItem(
                      value: v,
                      child: Text(v.toString().substring('CrossAxisAlignment.'.length)),
                    )).toList(),
                    onChanged: (newVal){
                      if( newVal != null ){
                        setState(() {
                          this._crossAxisAlignment = newVal;
                        });
                      }
                    },
                  ),
                ),
                ListTile(
                  title: Text("mainAxisSize"),
                  trailing: DropdownButton(
                    value: _mainAxisSize,
                    items: MainAxisSize.values.map((v) => DropdownMenuItem(
                      value: v,
                      child: Text(v.toString().substring('MainAxisSize.'.length)),
                    )).toList(),
                    onChanged: (newVal){
                      if( newVal != null ){
                        setState(() {
                          this._mainAxisSize = newVal;
                        });
                      }
                    },
                  ),
                )
              ],
            ),
          ),
        ],
      )
    );
  }
}