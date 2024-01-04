// ignore_for_file: annotate_overrides, overridden_fields

import 'package:eshop/controller/home_controller.dart';
import 'package:eshop/core/class/statusrequest.dart';
import 'package:eshop/core/functions/handlingdatacontroller.dart';
import 'package:eshop/core/services/services.dart';
import 'package:eshop/data/datasource/remote/items_data.dart';
import 'package:eshop/data/model/itemsmodel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract  class ItemsController extends SearchMixController {
   initialData(); 
   changeCat(int val, String catval);
   getItems(String categoryid);
   gotoPageProductDetails(ItemsModel itemsModel );
}

class ItemsControllerImp extends ItemsController {

  List categories = [];
   String? catid;
  int? selectedCat;
  
 ItemsData testData = ItemsData(Get.find());


  List data = [];
 late StatusRequest statusRequest;
 
 MyServices myServices = Get.find();


  @override
  void onInit() {
     search = TextEditingController();
    initialData();
    super.onInit();
  }


  @override
  initialData(){
   categories = Get.arguments['categories'];
   selectedCat = Get.arguments['selectedcat'];
   catid = Get.arguments['catid'];
   getItems(catid!);
  }

 


  @override
  changeCat(val, catval) {
    selectedCat = val;
    catid =  catval;
    getItems(catid!);
    update();
  }




  @override
  getItems(categoryid) async {
    data.clear();
      statusRequest = StatusRequest.loading;
    var response = await testData.getData(
      categoryid, myServices.sharedPreferences.getString("id")!);
    // ignore: avoid_print
    print("========================================== Controller $response");
    statusRequest = handlingData(response);
     if (StatusRequest.success == statusRequest){
        data.addAll(response['data']);
      }else{
        statusRequest = StatusRequest.failure;
      }
      update();
  }

    @override
    gotoPageProductDetails(itemsModel){
      Get.toNamed("productdetails", arguments: {"itemsmodel": itemsModel});

    }
}