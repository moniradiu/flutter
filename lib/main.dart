import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:first_app/HomePage.dart';
import 'package:first_app/IdeaPage.dart';
import 'package:first_app/WorkPage.dart';
// import 'package:first_app/ParsonPage.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Curved Navigation Bar',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int selectedpage = 0; //initial value

  final _pageOptions = [
    HomePage(),
    WorkPage(),
    IdeaPage()
    // ParsonPage(),
  ]; // listing of all 3 pages index wise

  final bgcolor = [
    Colors.orange,
    Colors.pink,
    Colors.greenAccent
    // Colors.red,
  ]; // changing color as per active index value

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pageOptions[
          selectedpage], // initial value is 0 so HomePage will be shown
      bottomNavigationBar: CurvedNavigationBar(
        height: 50,
        buttonBackgroundColor: Colors.blueAccent,
        backgroundColor: bgcolor[selectedpage],
        color: Colors.white,
        animationCurve: Curves.linearToEaseOut,
        items: <Widget>[
          Icon(
            Icons.home,
            size: 30,
            color: Colors.black,
          ),

          // Icon(
          //   Icons.menu,
          //   size: 30,
          //   color: Colors.black,
          // ),
          Icon(
            Icons.work,
            size: 30,
            color: Colors.black,
          ),
          Icon(
            Icons.wb_incandescent,
            size: 30,
            color: Colors.black,
          ),
          // Icon(
          //   Icons.person_add,
          //   size: 30,
          //   color: Colors.black,
          // ),
        ],
        onTap: (index) {
          setState(() {
            selectedpage =
                index; // changing selected page as per bar index selected by the user
          });
        },
      ),
    );
  }
}
