// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:eshop/core/class/statusrequest.dart';
import 'package:eshop/core/constant/color.dart';
import 'package:eshop/core/constant/imageasset.dart';
import 'package:flutter/widgets.dart';
import 'package:lottie/lottie.dart';

class HandlingDataView extends StatelessWidget {
  final StatusRequest? statusRequest;
  final Widget widget;
   HandlingDataView({Key? key,  required this.statusRequest, required this.widget}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return statusRequest == StatusRequest.loading ?
   Center(
     child: Column(
       children: [
         Lottie.asset(AppImageAsset.loading, width: 250, height: 350),
         Text('Please Wait...', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: AppColor.black
            ),),
       ],
     ),
   ):
    statusRequest == StatusRequest.offlinefailure ?
    Center(
      child: Column(
        children: [
          
          Lottie.asset(AppImageAsset.offline, width: 250, height: 350),
          Text('No Internet Connection', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: AppColor.black
          ),),
        ],
      ),
    ):
    statusRequest == StatusRequest.serverfailure ?
    Center(
      child: Column(
        children: [
          Lottie.asset(AppImageAsset.server, width: 250, height: 350,),
          Text('Server Failure', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: AppColor.black
            ),),
        ],
      ),
    ):
    statusRequest == StatusRequest.failure ?
     Center(
       child: Column(
         children: [
           Lottie.asset(AppImageAsset.nodata, width: 250, height: 350, repeat: true),
           Text('No Data Found', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: AppColor.black
            ),),
         ],
       ),
     ): widget;
  }
}