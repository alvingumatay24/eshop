// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, deprecated_member_use
import 'package:eshop/controller/forgetpassword/forgetpassword_controller.dart';
import 'package:eshop/core/class/handlingdataview.dart';
// import 'package:eshop/core/class/handlingdataview.dart';
// import 'package:eshop/core/class/statusrequest.dart';
// import 'package:eshop/core/class/statusrequest.dart';
import 'package:eshop/core/constant/color.dart';
import 'package:eshop/core/functions/alertexitapp.dart';
import 'package:eshop/core/functions/validinput.dart';
import 'package:eshop/view/widget/auth/custombottomauth.dart';
import 'package:eshop/view/widget/auth/customtextbodyaut.dart';
import 'package:eshop/view/widget/auth/customtextformauth.dart';
import 'package:eshop/view/widget/auth/customtexttitleauth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
   Get.put(ForgetPasswordControllerImp());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.backgroundColor,
        elevation: 0.0,
        title:  Text('Forget Password', style:  Theme.of(context).textTheme.headline1!.copyWith(color: AppColor.grey)),
        centerTitle: true,
      ),
      body:  WillPopScope(
        onWillPop: alertExitApp,
        child: GetBuilder<ForgetPasswordControllerImp>(builder: (controller)=> 
        HandlingDataRequest (statusRequest: controller.statusRequest, 
        widget: 
      Container(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 40),
          child: Form(
            key: controller.formstate,
            child: ListView(children: [     
              CustomTextTitleAuth(text: 'Check Your Email',),
              const SizedBox(height: 18),
              CustomBodyTextAuth(text: 'Please Enter Your Email to Recieve a Verification Code...', ),
              const SizedBox(height: 18),
                 CustomTextFormAuth(
                  isNumber: false,
                  valid: (val){
                    return validInput(val!, 5, 30, "email");
                  },
                  hintText: "Enter Your Email", 
                 iconData: Icons.mail_outline, 
                 labeltext: "Email", 
                  mycontroller: controller.email, 
                 ),
                CustomButtomAuth(text: 'CHECK', onPressed: (){
                  controller.checkemail();
                },),
                  SizedBox(height: 15),  
            ],),
          ),
        ),
      ),
      ),)
    );
  }
}