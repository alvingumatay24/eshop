
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, deprecated_member_use

import 'package:eshop/controller/auth/signup_controller.dart';
import 'package:eshop/core/class/statusrequest.dart';
import 'package:eshop/core/constant/color.dart';
import 'package:eshop/core/functions/alertexitapp.dart';
import 'package:eshop/core/functions/validinput.dart';
import 'package:eshop/view/widget/auth/custombottomauth.dart';
import 'package:eshop/view/widget/auth/customtextformauth.dart';
import 'package:eshop/view/widget/auth/customtexttitleauth.dart';
import 'package:eshop/view/widget/auth/textsignup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
  Get.lazyPut(()=> SignUpControllerImp());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.backgroundColor,
        elevation: 0.0,
        title:  Text('Sign Up', style:  Theme.of(context).textTheme.headline1!.copyWith(color: AppColor.grey)),
        centerTitle: true,
      ),
      body: WillPopScope(
        onWillPop: alertExitApp,
        child: GetBuilder<SignUpControllerImp>(builder: (controller)=>
        controller.statusRequest == StatusRequest.loading ? Center(child: Text('Loading...'),)
        :
        Container(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 40),
          child: Form(
            key: controller.formstate,
            child: ListView(children: [     
              CustomTextTitleAuth(text: 'Get Sign Up Now',),
              const SizedBox(height: 40),
                 CustomTextFormAuth(
                  valid: (val){
                    return validInput(val!, 5, 30, "username");
                  },
                  hintText: "Enter Your Username", 
                 iconData: Icons.person, 
                 labeltext: "Username", 
                  mycontroller: controller.username, isNumber: false,
                 ),
                 CustomTextFormAuth(
                  valid: (val){
                    return validInput(val!, 5, 30, "email");
                  },
                  hintText: "Enter Your Email", 
                 iconData: Icons.email_outlined, 
                 labeltext: "Email", 
                 mycontroller: controller.email, isNumber: false,
                 ),
                  CustomTextFormAuth(
                    valid: (val){
                      
                      return validInput(val!, 5, 30, "phone");
                    },
                  hintText: "Enter Your Phone No.", 
                 iconData: Icons.phone_android_outlined, 
                 labeltext: "Phone Number", 
                  mycontroller: controller.phone, isNumber: true,
                 ),
                  GetBuilder<SignUpControllerImp>(builder: (controller)=>  CustomTextFormAuth(
                    obscureText: controller.isshowpassword,
                    onTapIcon: (){
                       controller.showPassword();
                    },
                      valid: (val){
                        return validInput(val!, 5, 30, "password");
                      },
                    hintText: "Enter Your Password", 
                                   iconData: Icons.visibility,
                                   labeltext: "Password", 
                    mycontroller: controller.password, isNumber:  false,
                                   ),
                  ),
                CustomButtomAuth(text: 'SIGN-UP', onPressed: (){
                  controller.signUp();
                },),
                  SizedBox(height: 15),
               CustomTextSignUpOrSignIn(
                textone: "Have your account ? ", 
                texttwo: "SIGN IN",
                onTap: (){
                   controller.goToSignIn();
                },
                ),
             
            ],),
          ),
        ),),
      )
      
    );
  }
}