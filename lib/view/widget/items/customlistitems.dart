// ignore_for_file: prefer_const_constructors, prefer_interpolation_to_compose_strings

import 'package:cached_network_image/cached_network_image.dart';
import 'package:eshop/controller/favorite_controller.dart';
import 'package:eshop/controller/items_controller.dart';
import 'package:eshop/data/model/itemsmodel.dart';
import 'package:eshop/linkapi.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomListItems extends GetView<ItemsControllerImp> {
  final ItemsModel itemsModel ;
  // final bool active;
  const CustomListItems( {super.key, required this.itemsModel,});

  @override
  Widget build(BuildContext context) {
           return InkWell(
            onTap: (){
                 controller.gotoPageProductDetails(itemsModel);
                 },
                    child: Card(
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                          Hero(
                            tag:"${itemsModel.itemsId}",
                            child:   CachedNetworkImage(
                              imageUrl: AppLink.imagestItems + "/" + itemsModel.itemsImage!,
                              height: 100,
                              fit: BoxFit.fill,
                            ),),
                            Text(itemsModel.itemsName!, style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),),
                            Text('${itemsModel.categoriesName}', textAlign: TextAlign.center),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                               Text("Php. ${itemsModel.itemsPrice} ", textAlign: TextAlign.center, style: TextStyle(color: Colors.red, fontSize: 16, fontWeight: FontWeight.bold, fontFamily: "sans")),
                                GetBuilder<FavoriteController>(builder: (controller) =>
                                IconButton(onPressed: (){
                                  if (controller.isFavorite[itemsModel.itemsId] == "1"){
                                    controller.setFavorite(itemsModel.itemsId, "0");
                                  }else{
                                     controller.setFavorite(itemsModel.itemsId, "1");
                                  }
                                }, 
                                icon: Icon(
                                  controller.isFavorite[itemsModel.itemsId] == "1" 
                                  ? Icons.star 
                                  : Icons.star_border_outlined,
                                color: Colors.red)) )
                            ],)
                          ],
                        ),
                      ),
                    ),
                  );
                
              
  }
}