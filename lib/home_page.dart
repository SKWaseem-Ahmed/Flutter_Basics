// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 0.0),
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
      body: Center(
        child: Container(
          alignment: Alignment.center,
          height: 1000,
          width: 500,
          child: Scaffold(
            backgroundColor: Color(0xff00ADB5),
            body: Stack(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    '$count',
                    style: TextStyle(fontSize: 50, color: Color(0xffEEEEEE)),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
