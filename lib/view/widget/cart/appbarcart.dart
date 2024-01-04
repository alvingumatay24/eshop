// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppBarCart extends StatelessWidget {
  final String title;
   AppBarCart({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return      Container(
          alignment: Alignment.center,
          child: Row(children: [
            Expanded(
              child: Container(
                alignment: Alignment.centerLeft,
                child: IconButton(
                onPressed: (){
                  Get.back();
                }, icon: Icon(Icons.arrow_back)),
              )),
            Expanded(child: Text(title, style: TextStyle(fontSize: 25))),
            Spacer(),
          ],));
  }
}