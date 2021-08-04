import 'package:flutter/material.dart';
import 'package:project1/picture-book.dart';

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
