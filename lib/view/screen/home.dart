// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, sort_child_properties_last, sized_box_for_whitespace

import 'package:eshop/core/constant/color.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: Container(
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.only(top: 10),
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [
                  Expanded(child: TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      hintText: "Find Product",
                      hintStyle: TextStyle(fontSize: 18),
                      border: OutlineInputBorder(
                       borderSide: BorderSide.none,
                       borderRadius: BorderRadius.circular(10)
                      ),
                      filled: true,
                      fillColor: Colors.grey[200]
                    ),
                  )),
                  SizedBox(width: 10),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(10)
                    ),
                    width: 60,
                    padding: EdgeInsets.symmetric(vertical: 8),
                    child: IconButton(onPressed: (){}, icon: Icon(Icons.notifications_active_outlined, size: 35,
                    color: Colors.grey[600],)),)
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              child: Stack( children: [ Container(
                alignment: Alignment.center,
                child: ListTile(
                  title: Text('A Delighted surprise flavors', style: TextStyle(color: Colors.white, fontSize: 20),),
                  subtitle: Text('100% Chill & Cool!', style: TextStyle(color: Colors.white, fontSize: 30)),
                ),
                height: 150,   decoration: BoxDecoration(color: AppColor.secondColor, borderRadius:  BorderRadius.circular(20)),),
                 Positioned(
                  top:-20,
                  right: -50,
                  child: Container(height: 150, width: 150,decoration: BoxDecoration(
                    color:AppColor.firstColor,
                    borderRadius: BorderRadius.circular(160)
                  ),),
                )
                
                ])),
               
          ],
        )
      ),
      
    );
  }
}