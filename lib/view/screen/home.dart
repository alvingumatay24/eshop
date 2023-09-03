// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
     
        title: Text('HomePage Screen'),
      ),
      body: Container(
        child: Center(child: Text('HomePage', style: TextStyle(fontSize: 40),)),
      ),
    );
  }
}