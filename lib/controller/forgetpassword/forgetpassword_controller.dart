
// ignore_for_file: avoid_print

import 'package:eshop/core/class/statusrequest.dart';
import 'package:eshop/core/constant/routes.dart';
import 'package:eshop/core/functions/handlingdatacontroller.dart';
import 'package:eshop/data/datasource/remote/forgetpassword/checkemail.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

    abstract  class  ForgetPasswordController extends GetxController
    {
      checkemail();
     
    }
   class  ForgetPasswordControllerImp extends ForgetPasswordController{
    
 CheckEmailData checkEmailData =  CheckEmailData(Get.find());
    GlobalKey<FormState>  formstate =  GlobalKey<FormState>();
          StatusRequest statusRequest = StatusRequest.none;

         
         late TextEditingController  email;

        @override
        checkemail() async {
           if(formstate.currentState!.validate()){
             statusRequest = StatusRequest.loading;
            update();
             var response = await checkEmailData.postdata(email.text);

           print("========================================== Controller $response");
          statusRequest = handlingData(response);
          if (StatusRequest.success == statusRequest){
            if(response['status'] == "success"){
               Get.offNamed(AppRoute.verifyCode, arguments: {
                   "email" : email.text
               });
           }else{
            Get.defaultDialog(title: "Warning", middleText: "Email Not Found");
            statusRequest = StatusRequest.failure;
           }
           }
           update();
           }
        }
        

      @override
         void onInit() {
        email =  TextEditingController();
        super.onInit();
       }
     @override
        void dispose() {     
       email.dispose();
       super.dispose();
    }
    
  
      }

