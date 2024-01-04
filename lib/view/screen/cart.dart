// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, unused_local_variable

import 'package:eshop/controller/cart_controller.dart';
import 'package:eshop/core/class/handlingdataview.dart';
import 'package:eshop/view/widget/cart/appbarcart.dart';
import 'package:eshop/view/widget/cart/custom_buttom_navigationbar.dart';
import 'package:eshop/view/widget/cart/customitemcartlist.dart';
import 'package:eshop/view/widget/cart/topcart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
     CartController   cartController  = Get.put(CartController());
    return Scaffold(
      bottomNavigationBar: 
      GetBuilder<CartController>(builder: (controller)=> CustomButtomNavigationBar(
        price: '${cartController.priceorders}', shipping: '300.00', totalprice: '850.00',)),
      body: GetBuilder<CartController>
      (builder: (controller) => 
      HandlingDataView(
        statusRequest: controller.statusRequest, 
        widget:ListView(
        children: [
          AppBarCart(title: 'My Cart',),
          SizedBox(height:10),
        TopCart(message: 'You Have ${cartController.totalcountitems} Items In Your Lists.'),
         ...List.generate(cartController.data.length, (index) => 
         CustomItemCartList(
          onAdd: () async {
             await cartController.add(cartController.data[index].itemsId!);
             cartController.refreshPage();
          },
           onRemove: ()async{
             await cartController.delete(cartController.data[index].itemsId!);
             cartController.refreshPage();
          },
          imagename: "${cartController.data[index].itemsImage}", 
          name: "${cartController.data[index].itemsName}", 
          price: "Php ${cartController.data[index].itemsprice}.00", 
          count: "${cartController.data[index].countitems}",  ))
      ]) )));
    
  }
}