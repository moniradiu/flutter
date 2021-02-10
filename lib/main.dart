import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter  Sweep gradient Demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('FlutterSweep Demo'),
        ),
        body: Center(
          child: Container(
            decoration: BoxDecoration(
              gradient: SweepGradient(
                colors: [Colors.yellow, Colors.green, Colors.blue],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
