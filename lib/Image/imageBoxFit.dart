import 'package:flutter/material.dart';

void main() => runApp(ImageBoxFit());

class ImageBoxFit extends StatefulWidget {
  ImageBoxFit({Key key}) : super(key: key);

  _ImageBoxFitState createState() => _ImageBoxFitState();
}

class _ImageBoxFitState extends State<ImageBoxFit> {
  BoxFit _boxFit = BoxFit.none;
  
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Column(
        children: <Widget>[
          Container(
            width: 300,
            height: 100,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.blue,
                width: 1,
                style: BorderStyle.solid
              )
            ),
            child: Image(
              image: AssetImage('images/logo.png'),
              width: 300,
              height: 100,
              fit: _boxFit,
            ),
          ),
          ListTile(
            title: Text('BoxFit'),
            trailing: DropdownButton(
              value: _boxFit,
              items: BoxFit.values.map((value) => DropdownMenuItem(
                child: Text(value.toString().substring('BoxFit.'.length)),
                value: value
              )).toList(),
              onChanged: (newVal){
                if( newVal != null ){
                  setState(() {
                    _boxFit = newVal;
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