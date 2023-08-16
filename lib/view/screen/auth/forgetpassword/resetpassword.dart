
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, deprecated_member_use

import 'package:eshop/controller/auth/resetpassword_controller.dart';
import 'package:eshop/core/constant/color.dart';
import 'package:eshop/core/functions/alertexitapp.dart';
import 'package:eshop/core/functions/validinput.dart';
import 'package:eshop/view/widget/auth/custombottomauth.dart';
import 'package:eshop/view/widget/auth/customtextbodyaut.dart';
import 'package:eshop/view/widget/auth/customtextformauth.dart';
import 'package:eshop/view/widget/auth/customtexttitleauth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:get/get.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    ResetPasswordControllerImp controller = Get.put(ResetPasswordControllerImp());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.backgroundColor,
        elevation: 0.0,
        title:  Text('Reset Password', style:  Theme.of(context).textTheme.headline1!.copyWith(color: AppColor.grey)),
        centerTitle: true,
      ),
      body: WillPopScope(
        onWillPop: alertExitApp,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 40),
          child: ListView(children: [     
            CustomTextTitleAuth(text: 'New Password',),
          const SizedBox(height: 18),
            CustomBodyTextAuth(text: 'Please Enter New Password..', ),
            const SizedBox(height: 18),
                GetBuilder<ResetPasswordControllerImp>(builder: (controller)=>  CustomTextFormAuth(
                 obscureText: controller.isshowpassword,
                    onTapIcon: (){
                       controller.showPassword();
                    },
                    valid: (val){
                      return validInput(val!, 5, 30, "password");
                    },
                  hintText: "Enter Your Password", 
                               iconData: Icons.visibility, 
                               labeltext: "New Password", 
                               mycontroller: controller.password, isNumber: false, 
                              //  mycontroller: null,
                               ),
                ),
               GetBuilder<ResetPasswordControllerImp>(builder: (controller)=>  CustomTextFormAuth(
                 obscureText: controller.isshowpassword,
                    onTapIcon: (){
                       controller.showPassword();
                    },
                  valid: (val){
                    return validInput(val!, 5, 30, "repassword");
                  },
                  hintText: "Re Enter Your Password", 
                 iconData: Icons.visibility, 
                 labeltext: "Re Password", 
                 mycontroller: controller.password, isNumber: false, 
                             //  mycontroller: null,
                 ),
               ),
              CustomButtomAuth(text: 'save', onPressed: (){
                controller.goToSuccessResetPassword();
              },),
                SizedBox(height: 15),  
          ],),
        ),
      )
      
    );
  }
}