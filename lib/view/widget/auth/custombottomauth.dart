// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:eshop/core/constant/color.dart';
import 'package:flutter/material.dart';
 
class CustomButtomAuth extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  const CustomButtomAuth({super.key, required this.text, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:EdgeInsets.only(top: 10),
      child: MaterialButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        padding: EdgeInsets.symmetric(vertical: 13),
        onPressed: onPressed, 
        color: AppColor.primaryColor, 
        textColor: Colors.white,
        child: Text(text, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),), 
        ),
    );
  }
}