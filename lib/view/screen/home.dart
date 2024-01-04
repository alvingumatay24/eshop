// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, sort_child_properties_last, sized_box_for_whitespace, prefer_const_literals_to_create_immutables

import 'package:cached_network_image/cached_network_image.dart';
import 'package:eshop/controller/home_controller.dart';
import 'package:eshop/core/class/handlingdataview.dart';
import 'package:eshop/data/model/itemsmodel.dart';
import 'package:eshop/linkapi.dart';
import 'package:eshop/view/widget/home/customappbar.dart';
import 'package:eshop/view/widget/home/customcardhome.dart';
import 'package:eshop/view/widget/home/customtitlehome.dart';
import 'package:eshop/view/widget/home/listcategorieshome.dart';
import 'package:eshop/view/widget/home/listitemhome.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    Get.put(HomeControllerImp());
    return  GetBuilder<HomeControllerImp>
    (builder: (controller) =>  
       Container(   
              padding: EdgeInsets.symmetric(horizontal: 15),
        child: ListView(
          children:  [   
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
            HandlingDataView(
              statusRequest: controller.statusRequest, 
              widget:!controller.isSearch ? 
            Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            CustomCardHome(title: 'Delighted surprise flavors', body: 'A 100% Chill & Cool!'),
            CustomTitleHome(title: 'Categories'),
            ListCategoriesHome(),
            CustomTitleHome(title: 'Chillers for you',),
            ListItemHome(), 
            CustomTitleHome(title: 'New Chillers',),  
             ListItemHome(), 
           ]):
           ListItemsSearch(listdatamodel: controller.listdata) 
           )
          ],
        )
      )
     ); 
  }
}

class ListItemsSearch extends GetView<HomeControllerImp> {
  final List<ItemsModel> listdatamodel;
  const ListItemsSearch({super.key, required this.listdatamodel});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: listdatamodel.length,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index){
        return  InkWell(
          onTap: (){
             controller.gotoPageProductDetails(listdatamodel[index]);
          },
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 20),
            child: Card(child: Container(
              padding: EdgeInsets.all(10),
              child: Row(children: [
                Expanded(
                  child: CachedNetworkImage(
                  imageUrl: "${AppLink.imagestItems}/${listdatamodel[index].itemsImage}")),
                Expanded(
                flex:2, 
                child: ListTile(
                  title: Text(listdatamodel[index].itemsName!),
                  subtitle: Text(listdatamodel[index].categoriesName!),
                ),
              )
              ]),
              
            ),),
          ),
        );
      },
    );
  }
}
