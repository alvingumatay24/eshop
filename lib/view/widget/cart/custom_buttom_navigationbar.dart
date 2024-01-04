// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:eshop/view/widget/cart/custombutton.dart';
import 'package:flutter/material.dart';

class CustomButtomNavigationBar extends StatelessWidget {
  final String price;
  final String shipping;
  final String totalprice;
  const CustomButtomNavigationBar({super.key, required this.price, required this.shipping, required this.totalprice});

  @override
  Widget build(BuildContext context) {
    return  Container(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),

                  child: Text("Price", style: TextStyle(fontSize: 16),)),
                 Container(
                   padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text("Php $price", style: TextStyle(fontSize: 16))),
              ],
            ),
              Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),

                  child: Text("Shipping", style: TextStyle(fontSize: 16),)),
                 Container(
                   padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text("Php $shipping", style: TextStyle(fontSize: 16))),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Divider( color: Colors.black),
            ),
              Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),

                  child: Text("Total Price", style: TextStyle(color: Colors.red, fontSize: 16))),
                 Container(
                   padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text("Php $totalprice", style: TextStyle(color: Colors.red, fontSize: 16))),
              ],
            ),
         
            SizedBox(height:10),
            CustomButton(textbutton: "Place Order", onPressed:(){})
          ],)
      );
  }
}