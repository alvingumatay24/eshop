// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:eshop/controller/homescreen_controller.dart';
import 'package:eshop/core/constant/color.dart';
import 'package:eshop/core/constant/routes.dart';
import 'package:eshop/view/screen/customappbarhome.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeScreenControllerImp());
    return GetBuilder<HomeScreenControllerImp>(builder: (controller)=> Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColor.secondColor,
      onPressed: (){
        Get.toNamed(AppRoute.cart);
      }, 
      child: Icon(Icons.shopping_basket_outlined),),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: CustomButtonAppBarHome(), 
      body: controller.listpage.elementAt(controller.currentpage)
    ));
  }
}