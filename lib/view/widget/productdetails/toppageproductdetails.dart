
// ignore_for_file: prefer_const_constructors, prefer_interpolation_to_compose_strings

import 'package:cached_network_image/cached_network_image.dart';
import 'package:eshop/controller/productdetails_controller.dart';
import 'package:eshop/core/constant/color.dart';
import 'package:eshop/linkapi.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class TopPageProductDetails extends GetView<ProductDetailsControllerImp> {
  const TopPageProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return    Stack(
            clipBehavior: Clip.none,
            children: [      
          Container(
            height: 180, 
           decoration: BoxDecoration( 
            color: AppColor.secondColor, 
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(40)))), 
            Positioned(
              top: 40.0,
              right: Get.width / 8,
             child: Hero(
              tag: "${controller.itemsModel.itemsId}",
              child: CachedNetworkImage(imageUrl: AppLink.imagestItems + "/" + controller.itemsModel.itemsImage!, height: 250, fit: BoxFit.fill)))
          ]);
  }
}