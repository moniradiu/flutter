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
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.settings),
                ),
                Tab(
                  icon: Icon(Icons.camera),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [One(), Two()],
          ),
        ),
      ),
    );
  }
}
