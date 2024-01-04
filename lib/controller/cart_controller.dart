

// ignore_for_file: avoid_print, prefer_const_constructors, unnecessary_overrides

import 'package:eshop/core/class/statusrequest.dart';
import 'package:eshop/core/functions/handlingdatacontroller.dart';
import 'package:eshop/core/services/services.dart';

import 'package:eshop/data/datasource/remote/cart_data.dart';
import 'package:eshop/data/model/cartmodel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartController extends GetxController {

  CartData cartData = CartData(Get.find());
   late StatusRequest statusRequest;

  MyServices myServices = Get.find();

List<CartModel> data =[];

double priceorders = 0.0;

int totalcountitems = 0;



add(String itemsid) async{
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

delete(String itemsid) async{
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



resetVarCart(){
  totalcountitems = 0;
  priceorders = 0.0;
  data.clear();
}



refreshPage(){
  resetVarCart();
  view();
}

view() async{
  statusRequest =  StatusRequest.loading;
  update();
  data.clear();
  var response = await cartData.viewCart(
    myServices.sharedPreferences.getString("id")!);
    print("======================= Controller $response");
  statusRequest = handlingData(response);
  if (StatusRequest.success == statusRequest){
      if(response['status'] == "success"){ 
        if(response['datacart']['status'] == "success"){ 
      List dataresponse = response['datacart']['data'];
      Map dataresponsecountprice = response['countprice'];
      data.clear();
      data.addAll(dataresponse.map((e) => CartModel.fromJson(e)));
      totalcountitems = int.parse(dataresponsecountprice['totalcount']);
      priceorders = double.parse(dataresponsecountprice['totalprice']);
      print(priceorders);
        }
    } else{
      statusRequest = StatusRequest.failure;
    }
}
 update();
}

@override
  void onInit() {
 view();
    super.onInit();
  }


}