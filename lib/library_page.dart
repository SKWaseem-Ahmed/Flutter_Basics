import 'package:flutter/material.dart';

class LibraryPage extends StatefulWidget {
  const LibraryPage({Key? key}) : super(key: key);

  @override
  _LibraryPageState createState() => _LibraryPageState();
}

class _LibraryPageState extends State<LibraryPage> {
  int count = 100;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 0.0),
        child: FloatingActionButton(
          backgroundColor: Color(0xff00ADB5),
          child: Icon(Icons.minimize_rounded),
          onPressed: () {
            setState(() {
              count--;
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
