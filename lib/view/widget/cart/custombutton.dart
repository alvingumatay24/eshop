// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final void Function()? onPressed;
  final String textbutton;
  const CustomButton({Key? key, this.onPressed, required this.textbutton}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      width: double.infinity,
      child: MaterialButton(
        color: Colors.red,
        textColor: Colors.white,
        onPressed: onPressed,
        child: Text(textbutton, style: TextStyle(fontWeight: FontWeight.bold),),
      ),
    );
  }
}