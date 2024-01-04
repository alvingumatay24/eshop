// ignore_for_file: prefer_const_constructors, deprecated_member_use, prefer_const_literals_to_create_immutables

import 'package:eshop/controller/auth/login_controller.dart';
import 'package:eshop/core/class/handlingdataview.dart';
import 'package:eshop/core/constant/color.dart';
import 'package:eshop/core/functions/alertexitapp.dart';
import 'package:eshop/core/functions/validinput.dart';
import 'package:eshop/view/widget/auth/custombottomauth.dart';
import 'package:eshop/view/widget/auth/customtextbodyaut.dart';
import 'package:eshop/view/widget/auth/customtextformauth.dart';
import 'package:eshop/view/widget/auth/customtexttitleauth.dart';
import 'package:eshop/view/widget/auth/logoauth.dart';
import 'package:eshop/view/widget/auth/textsignup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) { Get.put(LoginControllerImp());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.backgroundColor,
        elevation: 0.0,
        title:  Text('Sign In', style:  Theme.of(context).textTheme.headline1!.copyWith(color: AppColor.grey)),
        centerTitle: true,
      ),
      body: WillPopScope(
        onWillPop: alertExitApp,
        child: GetBuilder <LoginControllerImp>(builder: (controller) =>
        HandlingDataRequest (statusRequest: controller.statusRequest, 
        widget: 
        Container(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 40),
          child: Form(
            key: controller.formstate,
            child: ListView(children: [
              LogoAuth(),
              CustomTextTitleAuth(text: 'Welcome RealTea',),
              const SizedBox(height: 18),
               CustomBodyTextAuth(text: 'Sign In With Your Email...', ),
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
                //  mycontroller: null,
                 ),
                 GetBuilder<LoginControllerImp>(builder: (controller)=> CustomTextFormAuth(
                  isNumber: false,
                    obscureText: controller.isshowpassword,
                    onTapIcon: (){
                       controller.showPassword();
                    },
                
                    valid: (val){
                      return validInput(val!, 5, 30, "password");
                    },
                  hintText: "Enter Your Password", 
                 iconData: Icons.lock_outlined, 
                 labeltext: "Password", 
                 mycontroller: controller.password, 
                //  mycontroller: null,
                 ),),
                InkWell(
                  onTap: () {
                      controller.goToForgetPassword();
                  },
                  child: Text('Forget Password', textAlign: TextAlign.end)),
                CustomButtomAuth(text: 'SIGN-IN', onPressed: (){
                  controller.login();
                },
                ),
                SizedBox(height: 15),
               CustomTextSignUpOrSignIn(
                textone: "You don't have account ? ", 
                texttwo: "SIGN UP",
                onTap: (){
                   controller.goToSignUp();
                },
                ),
            ],),
          ),
        ),)
      )
      
    )
    );
  }
}