// ignore_for_file: deprecated_member_use

import 'package:eshop/controller/onboarding_controller.dart';
import 'package:eshop/data/datasource/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomSliderOnBoarding  extends GetView<OnBoardingControllerImp> {
  const CustomSliderOnBoarding ({Key? key}):  super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      
      controller: controller.pageController,
      onPageChanged: (val){
        controller.onPageChanged(val);
      }, 
      
          itemCount: onBoardingList.length,
          itemBuilder: (context, i)=> Column(
            children: [
              const SizedBox(height: 33),
               Image.asset(onBoardingList[i].image!, width: 200, height: 230, fit:BoxFit.fill),
               const SizedBox(height: 33),
               Text(onBoardingList[i].title!,
               style:Theme.of(context).textTheme.headline1,), 
               const SizedBox(height: 33),
              Container(
                width: double.infinity,
                alignment: Alignment.center,
                child: Text(onBoardingList[i].body!, 
            textAlign: TextAlign.center, style: Theme.of(context).textTheme.bodyText1,),
              )],),
              );
  }
}