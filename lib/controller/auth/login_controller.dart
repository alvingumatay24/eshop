
// ignore_for_file: avoid_print

import 'package:eshop/core/constant/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

    abstract  class  LoginController extends GetxController
    {
      login();
      goToSignUp();
      goToForgetPassword();
    }
   class  LoginControllerImp extends LoginController{

   GlobalKey<FormState> formstate = GlobalKey<FormState>();
  
    TextEditingController?  email;
    TextEditingController?  password;
    
    bool isshowpassword = true;
    showPassword(){
      isshowpassword = isshowpassword == true ? false : true;
      update();
    }
        @override
        login() {
          var formdata = formstate.currentState;
           if(formdata!.validate()){
             print("Valid");
           }else{
              print("NotValid");
           }
        
        }
        
          @override
          goToSignUp() {
            Get.offNamed(AppRoute.signUp);
          }

      @override
         void onInit() {
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

