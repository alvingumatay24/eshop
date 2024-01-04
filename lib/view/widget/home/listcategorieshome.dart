// ignore_for_file: prefer_const_constructors

import 'package:eshop/controller/home_controller.dart';
import 'package:eshop/core/constant/color.dart';
import 'package:eshop/data/model/categoriesmodel.dart';
import 'package:eshop/linkapi.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

class ListCategoriesHome extends GetView<HomeControllerImp> {

  const ListCategoriesHome({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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

class Categories extends GetView<HomeControllerImp> {
  final CategoriesModel categoriesModel;
  final int? i;
  const Categories( {super.key, required this.categoriesModel, required this.i});

  @override
  Widget build(BuildContext context) {
        return 
             InkWell(
              onTap: (){
              controller.goToItems(controller.categories, i!, categoriesModel.categoriesId! );
              },
               child: Column(
                    children: [
                    Container(
                    decoration: BoxDecoration(color: Color.fromARGB(255, 212, 176, 211), 
                    borderRadius: BorderRadius.circular(20)),
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    height: 70,
                    width: 70,
                    child: SvgPicture.network("${AppLink.imagestCategories}/${categoriesModel.categoriesImage}")
                    ),
                    Text("${categoriesModel.categoriesName}", style: TextStyle(fontSize: 13, color: AppColor.firstColor),),
                  ],),
             );
  }
}