// ignore_for_file: avoid_print, unused_local_variable

import 'package:eshop/core/class/statusrequest.dart';
import 'package:eshop/core/constant/routes.dart';
import 'package:eshop/core/functions/handlingdatacontroller.dart';
import 'package:eshop/core/services/services.dart';
import 'package:eshop/data/datasource/remote/auth/login.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

    abstract  class  LoginController extends GetxController
    {
      login();
      goToSignUp();
      goToForgetPassword();
    }
   class  LoginControllerImp extends LoginController{
      int? id;
    LoginData loginData = LoginData(Get.find());

   GlobalKey<FormState> formstate = GlobalKey<FormState>();
  
    TextEditingController?  email;
    TextEditingController?  password;  
    bool isshowpassword = true;
    MyServices myServices = Get.find();

    StatusRequest statusRequest = StatusRequest.none;
    
    showPassword(){
      isshowpassword = isshowpassword == true ? false : true;
      update();
    }
        @override
        login() async {
          if (formstate.currentState!.validate()) {
               statusRequest = StatusRequest.loading;
            update();
             var response = await loginData.postdata(email!.text, password!.text );

           print("========================================== Controller $response");
          statusRequest = handlingData(response);
          if (StatusRequest.success == statusRequest){
            if(response['status']== "success"){
              // data?.addAll(response['data']);
            myServices.sharedPreferences.setString("id", response['data']['users_id']);
            myServices.sharedPreferences.setString("username", response['data']['users_name']);
            myServices.sharedPreferences.setString("email", response['data']['users_email']);
            myServices.sharedPreferences.setString("phone", response['data']['users_phone']);
            myServices.sharedPreferences.setString("step","2");
               Get.offNamed(AppRoute.homepage);
           }else{
            Get.defaultDialog(title: "Warning", middleText: "Email or Password not Correct.");
            statusRequest = StatusRequest.failure;
           }
           }
           update();
              //  Get.offNamed(AppRoute.verifyCodeSignUp);
            }else{}
        
        }
        
          @override
          goToSignUp() {
            Get.offNamed(AppRoute.signUp);
          }

      @override
         void onInit() {
        FirebaseMessaging.instance.getToken().then((value){
          print(value);
         String? token = value;
        });
        email =  TextEditingController();
        password = TextEditingController();
        super.onInit();
       }
     @override
        void dispose() {
       email!.dispose();
       password!.dispose();
       super.dispose();
    }
    
      @override
      goToForgetPassword() {
        Get.toNamed(AppRoute.forgetPassword);
      } 
      }

