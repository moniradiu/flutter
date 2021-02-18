// ignore: avoid_web_libraries_in_flutter
//import 'dart:html';

import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:path/path.dart';

// ignore: must_be_immutable
class WorkPage extends StatelessWidget {
  List names = [
    "Sirajum",
    "Fahad",
    "Fakrul",
    "Bhuyian",
    "Munira",
    "Ruhi",
    "Shadrita",
    "Nabil",
    "Nowshin",
    "Ifshita"
  ];
  List designation = [
    "Programmer",
    "Project Manger",
    "Team Lead",
    "Data Scientist",
    "Developer",
    "Marketing menager",
    "Web desiner",
    "Coder",
    "Maneger",
    "Customer care"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      body: ListView.builder(
        itemCount: 10,
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) => Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
          child: Card(
            elevation: 5.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0.0),
            ),
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        width: 55.0,
                        height: 55.0,
                        color: Colors.pink,
                        child: CircleAvatar(
                          backgroundColor: Colors.green,
                          foregroundColor: Colors.green,
                          backgroundImage: NetworkImage(
                              "https://d36tnp772eyphs.cloudfront.net/blogs/1/2018/02/Great-Wall-of-China-view.jpg"),
                        ),
                      ),
                      SizedBox(width: 5.0),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(names[index],
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18.5,
                                  fontWeight: FontWeight.bold)),
                          Text(designation[index],
                              style: TextStyle(color: Colors.grey)),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    alignment: Alignment.center,
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                    child: FlatButton(
                      onPressed: () {},
                      color: Colors.red[200],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0)),
                      child:
                          Text("Invite", style: TextStyle(color: Colors.white)),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
