// ignore_for_file: prefer_const_constructors
import 'package:eshop/controller/items_controller.dart';
import 'package:eshop/core/constant/color.dart';
import 'package:eshop/data/model/categoriesmodel.dart';
// import 'package:eshop/linkapi.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:flutter_svg/flutter_svg.dart';


class ListCategoriesItems extends GetView<ItemsControllerImp> {
  const ListCategoriesItems({super.key});
  @override
  Widget build(BuildContext context) {
    return 
    SizedBox(
                height: 100,
                child: ListView.separated(
                  separatorBuilder: (context, index) => SizedBox(width: 10),
                  itemCount: controller.categories.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index){
                return Categories(
                  i : index,
                  categoriesModel:
                   CategoriesModel.fromJson(controller.categories[index]));
               }));
  }
}

class Categories extends GetView<ItemsControllerImp> {
  final CategoriesModel categoriesModel;
  final int? i;
  const Categories( {super.key, required this.categoriesModel, required this.i});

  @override
  Widget build(BuildContext context) {
        return 
             InkWell(
              onTap: (){
              controller.changeCat(i!, categoriesModel.categoriesId!);
              },
               child: Column(
                    children: [
                     GetBuilder<ItemsControllerImp>(builder: ((controller) => 
                     Container(
                      padding: EdgeInsets.only(right: 10, left: 10, bottom: 5),
                      decoration: controller.selectedCat ==  i? 
                      BoxDecoration(
                        border: Border(
                          bottom: BorderSide(width: 3, color: AppColor.secondColor)
                        )): null,
                       child: Text("${categoriesModel.categoriesName}",
                        style: TextStyle(fontSize: 18, color: AppColor.grey2)),
                     )))
                  ],),
             );
  }
}