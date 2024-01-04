// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:eshop/core/constant/color.dart';
import 'package:flutter/material.dart';

class CustomButtonAppBar extends StatelessWidget {
 final void Function()? onPressed;
 final IconData icondata;
 final String textbutton;
  final  bool? active;
   CustomButtonAppBar({super.key, this.onPressed, required this.icondata, required this.textbutton,  required this.active, });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(onPressed: onPressed,
    child: Column(
      mainAxisSize: MainAxisSize.min,
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        Icon(icondata, color: active == true ? AppColor.firstColor : AppColor.grey2),
        // Text(textbutton, style: TextStyle(color: active == true ? AppColor.firstColor : AppColor.grey2),)
      ],
    ),);
  }
}