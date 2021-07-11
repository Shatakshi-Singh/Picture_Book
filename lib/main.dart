import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red[900],
        appBar: AppBar(
          title: Center(
            child: Text(
              'My Interest Picture Book',
              style: TextStyle(
                fontFamily: 'Kranky',
                fontSize: 30.0,
                color: Colors.red,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          backgroundColor: Colors.black,
        ),
        body: MyBook(),
      ),
    ),
  );
}

class MyBook extends StatefulWidget {
  @override
  _MyBookState createState() => _MyBookState();
}

class _MyBookState extends State<MyBook> {
  int img = 1;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        setState(() {
          img = Random().nextInt(10) + 1;
        });
      },
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/bg$img.jpeg'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
