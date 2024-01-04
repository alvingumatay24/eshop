// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';


class PriceAndCountItems extends StatelessWidget {
  final void Function()? onAdd;
   final void Function()? onRemove;
   final String price;
   final String count;
   const PriceAndCountItems(
    {Key? key, 
    required this.onAdd, 
    required this.onRemove, 
    required this.price, 
    required this.count}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return    Row(children: [
                  Row(children: [
                              IconButton(onPressed: 
                                onAdd,
                              icon: Icon(Icons.add)),
                              Container(
                                alignment: Alignment.center,
                                padding: EdgeInsets.only(bottom: 2),
                                width: 50,
                                 decoration: BoxDecoration(border: Border.all(color: Colors.black)),
                                 child: Text(count, style: TextStyle(fontSize: 20, height: 1.1))),
                                 IconButton(onPressed:
                                  onRemove,icon: Icon(Icons.remove)),
                  ],),
                  Spacer(),
                  // ignore: unnecessary_string_interpolations
                  Text("$price", style: TextStyle(color: Colors.red, fontSize: 30,  height: 1.1),)
                ]);
  }
}