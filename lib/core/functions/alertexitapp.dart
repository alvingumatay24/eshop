
// ignore_for_file: prefer_const_constructors

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: non_constant_identifier_names
Future<bool> alertExitApp(){
   Get.defaultDialog(
   title: 'App Exit',
   middleText: 'Are you sure want to exit ?',
   actions: [
    ElevatedButton(onPressed: (){
      exit(0);
    }, child: Text('Confirm')),
    ElevatedButton(onPressed: (){
          Get.back();
    }, child: Text('cancel'))
   ]);

   return  Future.value(true);
}