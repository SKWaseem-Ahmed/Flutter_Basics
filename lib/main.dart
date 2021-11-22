// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

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
        floatingActionButton: Padding(
          padding: const EdgeInsets.only(bottom: 58.0),
          child: FloatingActionButton(
            backgroundColor: Color(0xff00ADB5),
            child: Icon(Icons.add),
            onPressed: () {
              setState(() {
                count++;
              });
            },
          ),
        ),
        drawer: Drawer(),
        body: DefaultTabController(
          length: 4,
          child: Stack(
            children: [
              Container(
                color: Color(0xffEEEEEE),
                width: 500,
                height: 1000,
              ),
              Container(
                height: double.infinity,
                width: double.infinity,
              ),
              Scaffold(
                bottomNavigationBar: Padding(
                  padding: EdgeInsets.only(bottom: 20),
                  child: TabBar(
                    tabs: <Widget>[
                      Tab(
                        icon: Icon(Icons.home),
                      ),
                      Tab(
                        icon: Icon(Icons.video_collection),
                      ),
                      Tab(
                        icon: Icon(Icons.call),
                      ),
                      Tab(
                        icon: Icon(Icons.account_circle_rounded),
                      )
                    ],
                    labelColor: Color(0xff00ADB5),
                    indicator: UnderlineTabIndicator(
                      borderSide:
                          BorderSide(color: Color(0xff00ADB5), width: 4.0),
                      insets: EdgeInsets.only(bottom: 44),
                    ),
                    unselectedLabelColor: Color(0xff393E46),
                  ),
                ),
              ),
              Align(
                child: Text(
                  '$count',
                  style: TextStyle(fontSize: 30, color: Color(0xff393E46)),
                ),
                alignment: Alignment.center,
              )
            ],
          ),
        ),
      ),
    );
  }
}
