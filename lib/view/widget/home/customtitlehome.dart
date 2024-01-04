// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:eshop/core/constant/color.dart';
import 'package:flutter/material.dart';

class CustomTitleHome extends StatelessWidget {
  final String title;
  const CustomTitleHome({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return    Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Text(title, 
                 style: TextStyle(fontSize: 20, 
                 color: AppColor.firstColor, fontWeight: FontWeight.bold)),
    );
  }
}