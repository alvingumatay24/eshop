// ignore_for_file: avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, prefer_const_constructors, prefer_interpolation_to_compose_strings, sized_box_for_whitespace, unused_local_variable

// import 'package:eshop/controller/cart_controller.dart';
import 'package:eshop/controller/productdetails_controller.dart';
import 'package:eshop/core/class/handlingdataview.dart';
import 'package:eshop/core/constant/color.dart';
import 'package:eshop/core/constant/routes.dart';
import 'package:eshop/view/widget/productdetails/priceandcount.dart';
// import 'package:eshop/view/widget/productdetails/subitemslist.dart';
// import 'package:eshop/view/widget/productdetails/subitemslist.dart';
import 'package:eshop/view/widget/productdetails/toppageproductdetails.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductDetails extends StatelessWidget {

  const ProductDetails({super.key, });

  @override
  Widget build(BuildContext context) {
    ProductDetailsControllerImp controller = Get.put(ProductDetailsControllerImp());
    return Scaffold(
      bottomNavigationBar: 
      Container(
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        height: 40, 
        child: MaterialButton(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          color: Color.fromARGB(255, 16, 76, 126),
          onPressed: (){
          
           Get.toNamed(AppRoute.cart);

          },
        child: Text("Go To Cart", 
        style: TextStyle(color: Colors.white, fontSize: 19, fontWeight: FontWeight.bold),)), ),
      body:  GetBuilder<ProductDetailsControllerImp>(builder: (controller) => 
      HandlingDataView(
        statusRequest: controller.statusRequest, 
        widget: ListView(
          children: [
       TopPageProductDetails(),
          SizedBox(height: 100,),
          Container(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [           
                // ignore: deprecated_member_use
                Text("${controller.itemsModel.itemsName}", style: TextStyle(fontSize: 25, color: AppColor.black)),
                // SizedBox(height: 10,),
                 PriceAndCountItems(
                  onAdd: () { 
                    controller.add();
                  },
                  onRemove: () {
                     controller.remove();
                    }, 
                    price: 'Php ${controller.itemsModel.itemsPrice}',
                    count: "${controller.countitems}", 
                    ),
                Text("${controller.itemsModel.itemsDesc}", style: TextStyle(fontSize: 20, color: AppColor.grey2)),
                 SizedBox(height: 10), 
                 Text("Color", style: TextStyle(fontSize: 25, color: AppColor.black)),
                 SizedBox(height: 10,),
                //  SubitemList(),
          ],),),],),),)
    );
  }
}