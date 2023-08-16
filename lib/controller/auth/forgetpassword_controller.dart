
import 'package:eshop/core/constant/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

    abstract  class  ForgetPasswordController extends GetxController
    {
      checkemail();
      goToVerifyCode();
    }
   class  ForgetPasswordControllerImp extends ForgetPasswordController{
         
         TextEditingController?  email;

        @override
        checkemail() {
        
        }
        
          @override
          goToVerifyCode() {
            Get.offNamed(AppRoute.verifyCode);
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

