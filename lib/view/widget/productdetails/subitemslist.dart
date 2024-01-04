// ignore_for_file: prefer_const_constructors

import 'package:eshop/controller/productdetails_controller.dart';
import 'package:eshop/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SubitemList extends GetView<ProductDetailsControllerImp> {
  const SubitemList({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Row(
                  children: [
                    ...List.generate(controller.subitems.length,
                     (index)=>
                     Container(
                      margin: EdgeInsets.only(right: 10),
                      alignment: Alignment.center,
                      padding: EdgeInsets.only(bottom: 5),
                      height: 60,
                      width: 90,
                      decoration: BoxDecoration(
                        color: controller.subitems[index]['active'] == "1" 
                        ? Color.fromARGB(255, 7, 17, 160) 
                        : Colors.white,
                        border: Border.all(color: AppColor.black,),
                      borderRadius: BorderRadius.circular(10)),
                      child:Text(controller.subitems[index]['name'], 
                      style: TextStyle(color: controller.subitems[index]['active'] == "1" ? 
                      Colors.white 
                      :  Color.fromARGB(255, 7, 17, 160), fontWeight: FontWeight.bold, fontSize: 15))),
                    ),
                  ]);
  }
}