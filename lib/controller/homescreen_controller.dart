// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_renaming_method_parameters

import 'package:eshop/view/screen/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class HomeScreenController extends GetxController {
  changePage(int currentpage);

}

class HomeScreenControllerImp extends HomeScreenController {


 int currentpage = 0;
List<Widget> listpage = [
  HomePage(),
  Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Center(child: Text("Notification"))
    ]),
    Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Center(child: Text("Profile"))
    ]),
    Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Center(child: Text("Settings"))
    ]),
   
];

List bottomappbar = [
  {"title": "home", "icon": Icons.home},
  {"title": "notification", "icon": Icons.notifications_active_outlined},
  {"title": "profile", "icon": Icons.person_pin_sharp},
  {"title": "settings", "icon": Icons.settings},
];

 @override
 changePage(int i){
   currentpage = i;
   update();
 }
}