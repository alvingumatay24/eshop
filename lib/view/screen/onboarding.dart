
// ignore_for_file: sort_child_properties_last, prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:eshop/controller/onboarding_controller.dart';
import 'package:eshop/core/functions/alertexitapp.dart';
import 'package:eshop/view/widget/onboarding/custombutton.dart';
import 'package:eshop/view/widget/onboarding/customslider.dart';
import 'package:eshop/view/widget/onboarding/dotcontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingControllerImp());
    return Scaffold(
      body: WillPopScope(
        onWillPop: alertExitApp,
        child: SafeArea(child: Column(children: [
          Expanded(
            flex: 3,
            child: CustomSliderOnBoarding()
          ),
          Expanded(
            flex: 1,
            child: Column(children: [
                   CustomDotControllerOnBoarding(),
                   Spacer(flex: 2),
                   CustomButtonOnBoarding()
          ],))
        ],)),
      )
    );
  }
}