import 'package:eshop/core/constant/color.dart';
import 'package:flutter/material.dart';

class CustomBodyTextAuth extends StatelessWidget {
  final String text;
  const CustomBodyTextAuth({Key? key, required this.text, })  : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
            margin: const EdgeInsets.symmetric(horizontal: 5),
            // ignore: deprecated_member_use
            child: Text(text, textAlign: TextAlign.center, style:  Theme.of(context).textTheme.headline6!.copyWith(color: AppColor.black)
            ),
          );
  }
}