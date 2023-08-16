import 'package:eshop/core/constant/color.dart';
import 'package:flutter/material.dart';

class CustomTextTitleAuth extends StatelessWidget {
  final String text;
  const CustomTextTitleAuth({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    // ignore: deprecated_member_use
    return Text(text, textAlign: TextAlign.center, 
    // ignore: deprecated_member_use
    style: Theme.of(context).textTheme.headline4!.copyWith(color: AppColor.black, 
    fontWeight: FontWeight.bold ));
  }
}