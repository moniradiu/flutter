// ignore: unused_import

import 'package:first_app/one.dart';

import 'package:first_app/two.dart';

import 'package:flutter/material.dart';

// ignore: unused_import
import 'lib.dart';
// ignore: unused_import
import 'second.dart';

//import 'package:liquid_swipe/Helpers/Helpers.dart';
//import 'package:liquid_swipe/liquid_swipe.dart';
// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              pinned: true,
              expandedHeight: 200,
              backgroundColor: Colors.red,
              flexibleSpace: FlexibleSpaceBar(
                title: Text("Easy Explations"),
              ),
            ),
            SliverList(
                delegate: SliverChildListDelegate(<Widget>[
              addDetails("One", "This Is One"),
              addDetails("Two", "This Is Two"),
              addDetails("Three", "This Is Three"),
              addDetails("Four", "This Is Four"),
              addDetails("Five", "This Is Five"),
              addDetails("Six", "This Is Six"),
              addDetails("Seven", "This Is Seven"),
              addDetails("Eight", "This Is Eight"),
              addDetails("Nine", "This Is Nine"),
              addDetails("Ten", "This Is Ten"),
            ]))
          ],
        ),
      ),
    );
  }
}

Widget addDetails(
  String name,
  String description,
) {
  return ListTile(
    title: Text(name),
    subtitle: Text(description),
    leading: CircleAvatar(
      child: Text(name[0]),
    ),
  );
}
