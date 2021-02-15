import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:image_picker/image_picker.dart';
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
}

class MyImagePickerState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: <Widget>[
        Container(
          height: 500,
          width: double.infinity,
          color: Colors.blue,
        ),
        Divider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FloatingActionButton(
              onPressed: () {},
              child: Icon(Icons.camera),
            ),
            SizedBox(
              width: 20,
            ),
            FloatingActionButton(
              onPressed: () {},
              child: Icon(Icons.photo_library),
            ),
          ],
        )
      ],
    ));
  }
}
