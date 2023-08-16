// ignore_for_file: file_names

import 'package:eshop/core/constant/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

    abstract  class  CheckEmailController extends GetxController
    {
      checkemail();
      goToVerfiyCode();
    }
   class  CheckEmailControllerImp extends CheckEmailController{
         
         TextEditingController?  email;

        @override
        checkemail() {
        
        }
        
          @override
          goToVerfiyCode() {
            Get.offNamed(AppRoute.verifyCodeSignUp);
          }

      @override
         void onInit() {
        email =  TextEditingController();
        super.onInit();
       }
     @override
        void dispose() {     
       email!.dispose();
       super.dispose();
    } 
      }

