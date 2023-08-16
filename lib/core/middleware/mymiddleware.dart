
// ignore_for_file: prefer_const_constructors, body_might_complete_normally_nullable

import 'package:eshop/core/constant/routes.dart';
import 'package:eshop/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyMiddleWare extends GetMiddleware {
  @override
  int? get priority => 1;

  MyServices myServices = Get.find();

  @override
  RouteSettings? redirect(String? route){
    if(myServices.sharedPreferences!.getString("onboarding")== "1"){
      return RouteSettings(name: AppRoute.login);
    }
  }
}