// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:eshop/core/constant/color.dart';
import 'package:eshop/core/functions/alertexitapp.dart';
import 'package:eshop/view/widget/auth/custombottomauth.dart';
import 'package:flutter/material.dart';

class SuccessResetPassword extends StatelessWidget {
  const SuccessResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        backgroundColor: AppColor.backgroundColor,
        elevation: 0.0,
        // ignore: deprecated_member_use
        title:  Text('Success', style:  Theme.of(context).textTheme.headline1!.copyWith(color: AppColor.grey)),
        centerTitle: true,
      ),
      // ignore: avoid_unnecessary_containers
      body: WillPopScope(
        onWillPop: alertExitApp,
        child: Container(
          
          padding: EdgeInsets.all(15),
          child:  Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
                Center(child: Icon(Icons.check_circle_outline, size: 200, color: AppColor.primaryColor)),
                Text('....'),
                Text('....'),
                Spacer(),
                 Container(
                  width: double.infinity,
                   child: CustomButtomAuth(text: 'Go to Login', onPressed: (){
                               // controller.signUp();
                             },),
                 ),
              SizedBox(height: 30,)
                
          ],),
          
          
        ),
      ),
    );
  }
}