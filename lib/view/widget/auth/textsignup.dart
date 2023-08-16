// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:eshop/core/constant/color.dart';
import 'package:flutter/material.dart';

class CustomTextSignUpOrSignIn extends StatelessWidget {
  final String textone;
  final String texttwo;
  final void Function() onTap;
  CustomTextSignUpOrSignIn(
    {Key? key, 
     required this.textone, 
     required this.texttwo, required this.onTap, 
     }) 
     : super(key: key); 

  @override
  Widget build(BuildContext context) {
    return  Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(textone, style: TextStyle(fontSize: 16),),
                
                InkWell(
                  onTap: onTap,
                   child: Text(texttwo, style: TextStyle(color: AppColor.black, fontSize: 16, fontWeight: FontWeight.bold),),
                  
                  ),
              ],
            );
  }
}