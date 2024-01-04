// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:eshop/core/constant/color.dart';
import 'package:flutter/material.dart';

class CustomCardHome extends StatelessWidget {
  final String title;
  final String body;
  const CustomCardHome({super.key, required this.title, required this.body});

  @override
  Widget build(BuildContext context) {
   
    return  Container(
              margin: EdgeInsets.symmetric( vertical: 15),
              child: Stack( children: [ Container(
                alignment: Alignment.center,
                child: ListTile(
                  title: Text(title, style: TextStyle(color: Colors.white, fontSize: 20),),
                  subtitle: Text(body, style: TextStyle(color: Colors.white, fontSize: 30)),
                ),
                height: 150,   decoration: BoxDecoration(color: AppColor.secondColor, borderRadius:  BorderRadius.circular(20)),),
                 Positioned(
                  top:-20,
                  right: -50,
                  child: Container(height: 150, width: 150,decoration: BoxDecoration(
                    color:AppColor.firstColor,
                    borderRadius: BorderRadius.circular(160)
                  ),),
                )
                ]));
  }
}