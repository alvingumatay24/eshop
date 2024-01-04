// ignore_for_file: prefer_const_constructors

import 'package:eshop/controller/home_controller.dart';
import 'package:eshop/core/constant/color.dart';
import 'package:eshop/data/model/itemsmodel.dart';
import 'package:eshop/linkapi.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ListItemHome extends GetView<HomeControllerImp>{
  const ListItemHome({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
                height: 140,
                child: ListView.builder(
                itemCount: controller.items.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, i){
                  return ItemsHome(itemsModel: ItemsModel.fromJson(controller.items[i]));
                },
                ),
               );
  }
}

class ItemsHome extends StatelessWidget {
  final ItemsModel itemsModel;
  const ItemsHome({super.key, required this.itemsModel});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      child: Image.network("${AppLink.imagestItems}/${itemsModel.itemsImage}", 
                      height: 100, width: 150, fit: BoxFit.fill,),),
                     Container(
                      decoration: BoxDecoration(
                         color: AppColor.black.withOpacity(0.1),
                         borderRadius: BorderRadius.circular(20) 
                      ),
                      height: 120,
                      width: 200,
                    ),
                    Positioned(
                      left:10,
                      child: Text('${itemsModel.itemsName}', style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold, color: AppColor.firstColor),))
                  ],);
  }
}