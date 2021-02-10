import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Radial Gradient Demo',
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Flutter Gradient Demo'),
          ),
          body: Center(
            child: Container(
              decoration: BoxDecoration(
                gradient: RadialGradient(
                  colors: [Colors.yellow, Colors.deepPurple],
                ),
              ),
            ),
          ),
        ));
  }
}
