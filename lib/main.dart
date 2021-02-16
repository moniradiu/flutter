import 'package:flutter/material.dart';

import 'package:image_picker/image_picker.dart';
import 'dart:async';

import 'dart:io';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text('Pick Image From Camera & Gallery')),
            body: Center(child: MyImagePicker())));
  }
}

class MyImagePicker extends StatefulWidget {
  @override
  MyImagePickerState createState() => MyImagePickerState();

  void setState(Null Function() param0) {}
}

class MyImagePickerState extends State {
  File _image, _gallery;

  Future CameraImage() async {
    // ignore: non_constant_identifier_names
    var Image = await ImagePicker.pickImage(source: ImageSource.camera);

    setState(() {
      _image = Image;
    });
  }

  Future GalleryImage() async {
    // ignore: non_constant_identifier_names
    var Gallery = await ImagePicker.pickImage(source: ImageSource.gallery);

    setState(() {
      _gallery = Gallery;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: <Widget>[
        Container(
          height: 500,
          width: double.infinity,
          color: Colors.blue,
          child: _image == null
              ? Center(child: Text("No Image Selected"))
              : Image.file(_image),
        ),
        Divider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FloatingActionButton(
              onPressed: () {
                CameraImage();
              },
              child: Icon(Icons.camera),
            ),
            SizedBox(
              width: 20,
            ),
            FloatingActionButton(
              onPressed: () {
                GalleryImage();
              },
              child: Icon(Icons.photo_library),
            ),
          ],
        )
      ],
    ));
  }
}
