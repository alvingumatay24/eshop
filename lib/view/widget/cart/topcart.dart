// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class TopCart extends StatelessWidget {
  final String message;
  const TopCart({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return   Container(
             padding: EdgeInsets.only(bottom:5),
             margin: EdgeInsets.symmetric(horizontal: 20),
              // height: 20,
             decoration: BoxDecoration(
            color: Color.fromARGB(255, 127, 193, 231),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Text(message, textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),),
        );
  }
}
