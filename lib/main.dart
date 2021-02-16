import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text('modal bottom sheet ')),
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
          showModalBottomSheet(
              context: context,
              builder: (context) {
                return Container(
                  height: 250,
                  child: Column(
                    children: <Widget>[
                      ListTile(
                        title: Text("One"),
                        subtitle: Text("This is One"),
                        trailing: Icon(Icons.access_alarm),
                      ),
                      ListTile(
                        title: Text("Two"),
                        subtitle: Text("This is Two"),
                        trailing: Icon(Icons.book_online),
                      ),
                      ListTile(
                        title: Text("Three"),
                        subtitle: Text("This is Three"),
                        trailing: Icon(Icons.person),
                      ),
                      ListTile(
                        title: Text("Four"),
                        subtitle: Text("This is Four"),
                        trailing: Icon(Icons.business_center),
                      ),
                    ],
                  ),
                );
              });
        },
        child: Text("click me"),
      ),
    ));
  }
}
