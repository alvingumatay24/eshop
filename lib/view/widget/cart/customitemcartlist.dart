// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:cached_network_image/cached_network_image.dart';
import 'package:eshop/linkapi.dart';
import 'package:flutter/material.dart';

class CustomItemCartList extends StatelessWidget {
  final String name;
  final String price;
  final String count;
  final String imagename;
  final void Function()? onAdd;
   final void Function()? onRemove;
  CustomItemCartList({super.key, required this.name, required this.price, required this.count, required this.imagename, required this.onAdd, required this.onRemove});

  @override
  Widget build(BuildContext context) {
    return Container(
          padding: EdgeInsets.all(10),
           child: Column(
            children: [
               Card(
              child: Container(
                child: Row(children: [
                 Expanded(
                  flex: 2,
                  child: CachedNetworkImage(
                    imageUrl: "${AppLink.imagestItems}/$imagename",
                    height: 80,
                    fit: BoxFit.cover,
                  )),
                 Expanded(
                  flex: 3,
                  child: ListTile(
                  title: Text(name, style: TextStyle( fontSize: 19)),
                  subtitle: Text(price, style: TextStyle(color: Colors.red, fontSize: 19),),
                 )),
                 Expanded(
                  child: Column(
                  children: [
                    Container(
                      // height: 30,
                      child: IconButton(onPressed: onAdd, icon: Icon(Icons.add))),
                    Container(
                      // height: 30,
                      child: Text(count, style: TextStyle(fontFamily: "sans", fontSize: 15),)),
                    Container(
                      // height: 30,
                      child: IconButton(onPressed: onRemove, icon: Icon(Icons.remove)))
                  ],
                 ))
                ]),
              ),
            ),
            ],
           ),
         );
  }
}