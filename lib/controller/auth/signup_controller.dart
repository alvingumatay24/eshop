
import 'package:eshop/core/class/statusrequest.dart';
import 'package:eshop/core/constant/routes.dart';
import 'package:eshop/core/functions/handlingdatacontroller.dart';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../data/datasource/remote/auth/signup.dart';

    abstract  class  SignUpController extends GetxController
    {
      signUp();
      goToSignIn();
    }
   class  SignUpControllerImp extends SignUpController{
    GlobalKey<FormState>  formstate =     GlobalKey<FormState>();
         
          late TextEditingController  username;
          late TextEditingController  email;
          late TextEditingController  phone;
          late TextEditingController  password;
          bool isshowpassword = true;
        StatusRequest? statusRequest;
           SignupData signupData = SignupData(Get.find());
        List data = [];
    
    showPassword(){
      isshowpassword = isshowpassword == true ? false : true;
      update();
    }

        @override
        signUp() async {
            if (formstate.currentState!.validate()) {
               statusRequest = StatusRequest.loading;
            update();
             var response = await signupData.postdata(username.text, email.text, password.text, phone.text );
            // ignore: avoid_print
           print("========================================== Controller $response");
          statusRequest = handlingData(response);
          if (StatusRequest.success == statusRequest){
            if(response['status']== "success"){
              // data?.addAll(response['data']);
               Get.offNamed(AppRoute.verifyCodeSignUp, arguments: {"email" : email.text});
           }else{
            Get.defaultDialog(title: "Warning", middleText: "Phone Number or Email Already Exists.");
            statusRequest = StatusRequest.failure;
           }
           }
           update();
              //  Get.offNamed(AppRoute.verifyCodeSignUp);
            }else{}
           
        }
        
          @override
          goToSignIn() {
            Get.offNamed(AppRoute.login);
          }

      @override
         void onInit() {
        username =  TextEditingController();
        email =  TextEditingController();
        phone =  TextEditingController();
        password = TextEditingController();
        super.onInit();
       }
     @override
        void dispose() {
       username.dispose();
       email.dispose();
       phone.dispose();
       password.dispose();
       super.dispose();
    } 
      }

