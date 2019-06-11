import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

void main() => runApp(ImagePickerDemo());

class ImagePickerDemo extends StatefulWidget {
  ImagePickerDemo({Key key}) : super(key: key);

  _ImagePickerDemoState createState() => _ImagePickerDemoState();
}

class _ImagePickerDemoState extends State<ImagePickerDemo> {
  File _showImage;
  

  Future _pickImageFromCamera() async {
    File image = await ImagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      _showImage = image;
    });
  }

  Future _pickImageFromGallery() async {
    File image = await ImagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      _showImage = image;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.camera_alt),
                onPressed: () async=> await _pickImageFromCamera(),
              ),
              IconButton(
                icon: Icon(Icons.image),
                onPressed: () async=> await _pickImageFromGallery(),
              ),
            ],
          ),
          _showImage != null ? Image.file(_showImage) : Text('点击上面的按钮选择图片')
        ],
      ),
    );
  }
}