// ignore_for_file: overridden_fields

import 'package:eshop/core/class/statusrequest.dart';
import 'package:eshop/core/constant/routes.dart';
import 'package:eshop/core/functions/handlingdatacontroller.dart';
import 'package:eshop/core/services/services.dart';
import 'package:eshop/data/datasource/remote/home_data.dart';
import 'package:eshop/data/model/itemsmodel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

    abstract  class  HomeController extends SearchMixController {
      initialData();
      getdata();
      goToItems(List categories, int selectedCat, String categoryid);
    }
  class  HomeControllerImp extends HomeController {

    MyServices myServices = Get.find();


    String? username;
    String? id;


   

    // ignore: annotate_overrides
    HomeData homedata = HomeData(Get.find());
 
 

  //  List data = [];
   List categories = [];
   List items = [];

    


    @override
    initialData() {
      username = myServices.sharedPreferences.getString("username");
      id = myServices.sharedPreferences.getString("id");
    }


    @override
    void onInit() {
      search = TextEditingController();
      getdata();
   initialData();
    super.onInit();
  }
  
  @override
  getdata() async {
    statusRequest = StatusRequest.loading;
    var response = await homedata.getData();
    // ignore: avoid_print
    print("========================================== Controller $response");
    statusRequest = handlingData(response);
     if (StatusRequest.success == statusRequest){
         if(response['status'] == "success"){
              categories.addAll(response['categories']['data']);
              items.addAll(response['items']['data']);
           }else{
            statusRequest = StatusRequest.failure;
           }
      }
      update();
  }



    @override
    goToItems(categories, selectedCat, categoryid) {
    Get.toNamed(AppRoute.items, arguments: {
        "categories" : categories,
        "selectedcat" : selectedCat,
        "catid" : categoryid,
    });
  }


  gotoPageProductDetails(itemsModel){
    Get.toNamed("productdetails", arguments: {"itemsmodel": itemsModel});
  }
}


class SearchMixController extends GetxController {
  List<ItemsModel> listdata = [];
  
  late StatusRequest statusRequest;
  HomeData homedata = HomeData(Get.find());
  searchData() async {
    statusRequest = StatusRequest.loading;
    var response = await homedata.searchData(search!.text);
    // ignore: avoid_print
    print("========================================== Controller $response");
    statusRequest = handlingData(response);
     if (StatusRequest.success == statusRequest){
         if(response['status'] == "success"){
          listdata.clear();
          List responsedata =  response['data'];
          listdata.addAll(responsedata.map((e)=> ItemsModel.fromJson(e)));
           }else{
            statusRequest = StatusRequest.failure;
           }
      }
      update();
  }




    bool isSearch = false;
    TextEditingController? search;
    
    checkSearch(val){
       if(val == ""){
         isSearch = false;
       }
      update();
   }
  

  onSearchItems(){   
      isSearch = true; 
    searchData();
    update();   
   }
}