
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:eshop/controller/forgetpassword/resetpassword_controller.dart';
import 'package:eshop/core/class/handlingdataview.dart';
import 'package:eshop/core/constant/color.dart';
import 'package:eshop/core/functions/validinput.dart';
import 'package:eshop/view/widget/auth/custombottomauth.dart';
import 'package:eshop/view/widget/auth/customtextbodyaut.dart';
import 'package:eshop/view/widget/auth/customtextformauth.dart';
import 'package:eshop/view/widget/auth/customtexttitleauth.dart';

import 'package:get/get.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  
  

  @override
  Widget build(BuildContext context) { Get.put(ResetPasswordControllerImp());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.backgroundColor,
        elevation: 0.0,
        title:  Text('Reset Password', style:  Theme.of(context).textTheme.headline1!.copyWith(color: AppColor.grey)),
        centerTitle: true,
      ),
      body:  GetBuilder<ResetPasswordControllerImp>(builder: (controller)=> 
         HandlingDataRequest (statusRequest: controller.statusRequest, 
        widget:  
      Container(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 40),
          child: Form(
            key: controller.formstate,
            child: ListView(children: [     
            CustomTextTitleAuth(text: 'New Password',),
          const SizedBox(height: 18),
            CustomBodyTextAuth(text: 'Please Enter New Password..', ),
            const SizedBox(height: 18),
                CustomTextFormAuth(
                  isNumber: false,
                    valid: (val){
                      return validInput(val!, 5, 30, "password");
                    },
                  hintText: "Enter Your Password", 
                               mycontroller: controller.password, 
                               iconData: Icons.visibility, 
                               labeltext: "New Password", 
                               
                              //  mycontroller: null,
                               ),
                     CustomTextFormAuth(   
                  isNumber: false,
                  valid: (val){
                    return validInput(val!, 5, 30, "repassword");
                  },
                  mycontroller: controller.repassword,
                  hintText: "Re Enter Your Password", 
                 iconData: Icons.visibility, 
                 labeltext: "Re Password",               
                 ),
             CustomButtomAuth(text: 'SUBMIT',
               onPressed: (){
                controller.goToSuccessResetPassword();
              },),
              
                SizedBox(height: 15),  
          ],),
        ))))
      );
  }
}

