// import 'package:eshop/controller/cart_controller.dart';
// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:eshop/core/class/statusrequest.dart';
import 'package:eshop/core/functions/handlingdatacontroller.dart';
import 'package:eshop/core/services/services.dart';
import 'package:eshop/data/datasource/remote/cart_data.dart';
import 'package:eshop/data/model/itemsmodel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class ProductDetailsController extends GetxController {
  
}


class ProductDetailsControllerImp extends ProductDetailsController {


// CartController cartController = Get.put(CartController());



   late ItemsModel itemsModel;
 
CartData cartData = CartData(Get.find());

   late StatusRequest statusRequest;
   
  MyServices myServices = Get.find();

   int countitems = 0;

  initialData() async {
    statusRequest = StatusRequest.loading;
   itemsModel = Get.arguments['itemsmodel'];
   countitems = await getCountItems(itemsModel.itemsId!);
    statusRequest = StatusRequest.success;
    update();
  }

addItems(String itemsid) async{
  statusRequest =  StatusRequest.loading;
  update();
  var response = await cartData.addCart(
    myServices.sharedPreferences.getString("id")!, itemsid);
    print("============================================ Controller $response");
  statusRequest = handlingData(response);
    if(response['status'] == "success"){
      Get.rawSnackbar(
        title: "Add Cart",
        messageText: Text("Cart has been success fully Added!") 
      );
    } else{
      statusRequest = StatusRequest.failure;
    }
     update();
}

getCountItems(String itemsid) async{
  statusRequest =  StatusRequest.loading;
  var response = await cartData.getCountCart(
    myServices.sharedPreferences.getString("id")!, itemsid);
    print("======================= Controller $response");
  statusRequest = handlingData(response);
  if (StatusRequest.success == statusRequest){
    if(response['status'] == "success"){ 
      int countitems = 0;
      countitems = int.parse(response["data"]);
      print("==================================");
      print("$countitems");
      return countitems;
    } else{
      statusRequest = StatusRequest.failure;
    }
}
}

deleteItems(String itemsid) async{
  statusRequest =  StatusRequest.loading;
   update();
  var response = await cartData.deleteCart(
    myServices.sharedPreferences.getString("id")!, itemsid);
    print("======================= Controller $response");
  statusRequest = handlingData(response);
    if(response['status'] == "success"){
      Get.rawSnackbar(
        title: "Delete Cart",
        messageText: Text("Cart has been deleted fully Added!") 
      );
    } else{
      statusRequest = StatusRequest.failure;
    }
     update();
}
  List subitems = [
   {"name": "red", "id": 1, "active": '0'},
   {"name": "yellow", "id": 2, "active": '0'},
   {"name": "black", "id": 3, "active": '1'}
  ];

  add(){
    addItems(itemsModel.itemsId!);
    countitems++;
    update();
  }

  remove(){
    if(countitems > 0){
     deleteItems(itemsModel.itemsId!);
      countitems--;
      update();
    }
  }

  @override
  void onInit() {
    initialData();
    super.onInit();
  }
}