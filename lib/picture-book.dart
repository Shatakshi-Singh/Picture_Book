import 'package:flutter/material.dart';
import 'dart:math';

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
          img = Random().nextInt(30) + 1;
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