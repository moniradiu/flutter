import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text('simple alert dialog')),
            body: Center(child: MyImagePicker())));
  }
}

class MyImagePicker extends StatefulWidget {
  @override
  MyImagePickerState createState() => MyImagePickerState();

  void setState(Null Function() param0) {}
}

class MyImagePickerState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: RaisedButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Text("Alert"),
                  content: Text("This is a simple alert dialog"),
                  actions: <Widget>[
                    RaisedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text("Ok"),
                    )
                  ],
                );
              });
        },
        child: Text("click me"),
      ),
    ));
  }
}
