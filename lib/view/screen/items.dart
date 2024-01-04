// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, unused_local_variable, prefer_interpolation_to_compose_strings, prefer_const_literals_to_create_immutables, sort_child_properties_last
// import 'package:cached_network_image/cached_network_image.dart';
import 'package:eshop/controller/favorite_controller.dart';
import 'package:eshop/controller/items_controller.dart';
import 'package:eshop/core/class/handlingdataview.dart';
import 'package:eshop/data/model/itemsmodel.dart';
import 'package:eshop/view/screen/home.dart';
import 'package:eshop/view/widget/home/customappbar.dart';
// import 'package:eshop/view/widget/home/customappbar.dart';
import 'package:eshop/view/widget/items/customlistitems.dart';
import 'package:eshop/view/widget/items/listcategoriesitems.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class Items extends StatelessWidget {
  const Items({super.key});
  @override
  Widget build(BuildContext context) {
    ItemsControllerImp controller  = Get.put(ItemsControllerImp());
    FavoriteController controllerFav  = Get.put(FavoriteController());
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(15),
        child:  ListView(children: [
            CustomAppBar(
             mycontroller: controller.search!,
            titleappbar: 'Find Product',  
            onPressedSearch: (){
              controller.onSearchItems();
            },
            onChanged: (val){
               controller.checkSearch(val);
            },
            ), 
              SizedBox(height: 20),
              ListCategoriesItems(),
               GetBuilder<ItemsControllerImp>(
                builder: (controller) => 
                HandlingDataRequest(
                  statusRequest: controller.statusRequest, 
                widget: ! controller.isSearch ? 
                GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: controller.data.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.7 
                ),
                itemBuilder: (BuildContext context, index){
                  controllerFav.isFavorite[controller.data[index]['items_id']] = controller.data[index]['favorite'];
              return CustomListItems(
                  itemsModel: ItemsModel.fromJson(controller.data[index])); 
                }) :    
                  ListItemsSearch(listdatamodel: controller.listdata) 
                ))])));
  }
}