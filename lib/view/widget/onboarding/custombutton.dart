// ignore_for_file: sort_child_properties_last

import 'package:eshop/controller/onboarding_controller.dart';
import 'package:eshop/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomButtonOnBoarding extends GetView<OnBoardingControllerImp> {
 const CustomButtonOnBoarding({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
            margin: const EdgeInsets.only(bottom: 80),
            height: 40,
            child:  MaterialButton(
            padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 0), textColor: Colors.white,
            onPressed: (){
              controller.next();
            }, child: const Text("Continue"),), color: AppColor.primaryColor);
  }
}