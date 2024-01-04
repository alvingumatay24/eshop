// ignore_for_file: prefer_const_constructors

import 'package:eshop/controller/homescreen_controller.dart';
import 'package:eshop/view/screen/custombuttonappbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class CustomButtonAppBarHome extends StatelessWidget{
  const CustomButtonAppBarHome({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeScreenControllerImp>(builder: ((controller) =>  BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Row(children: [
       ...List.generate(controller.listpage.length + 1, 
       ((index){ 
            int i = index > 2  ? index - 1 : index;
            return index == 2  
            ? Spacer() : CustomButtonAppBar(
           textbutton: controller.bottomappbar[i]['title'],
           icondata: controller.bottomappbar[i]['icon'],
             onPressed: (){
            controller.changePage(i);
           },
           active: controller.currentpage == i ? true : false);
           } )),
      
      ],))));
  }
}