// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:practice/home_page.dart';
import 'package:practice/library_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int count = 0;
  int _currentIndex = 0;
  final tabs = [
    HomePage(),
    LibraryPage(),
    Center(child: Text("Search")),
    Center(child: Text("Profile")),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff222831),
          title: Text(
            "Flutter Practice",
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Color(0xffEEEEEE)),
          ),
        ),
        drawer: Drawer(),
        body: DefaultTabController(
          length: 4,
          child: Stack(
            children: [
              // Container(
              //   color: Color(0xffEEEEEE),
              //   width: 500,
              //   height: 1000,
              // ),
              Container(
                height: double.infinity,
                width: double.infinity,
              ),
              Scaffold(
                  body: tabs[_currentIndex],
                  bottomNavigationBar: BottomNavigationBar(
                    currentIndex: _currentIndex,
                    iconSize: 25,
                    type: BottomNavigationBarType.fixed,
                    selectedFontSize: 15,
                    unselectedFontSize: 10,
                    selectedItemColor: Color(0xff00ADB5),
                    items: [
                      BottomNavigationBarItem(
                          icon: Icon(Icons.home),
                          label: "Home",
                          backgroundColor: Color(0xff393E46)),
                      BottomNavigationBarItem(
                          icon: Icon(Icons.video_collection_rounded),
                          label: "Library",
                          backgroundColor: Color(0xff393E46)),
                      BottomNavigationBarItem(
                          icon: Icon(Icons.search_outlined),
                          label: "Search",
                          backgroundColor: Color(0xff393E46)),
                      BottomNavigationBarItem(
                          icon: Icon(Icons.account_circle_outlined),
                          label: "Profile",
                          backgroundColor: Color(0xff393E46)),
                    ],
                    onTap: (index) {
                      setState(() {
                        _currentIndex = index;
                      });
                    },
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
