import 'package:eshop/core/constant/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

    abstract  class  VerifyCodeController extends GetxController
    {
      checkcode();
      goToResetPassword();
    }
   class  VerifyCodeControllerImp extends VerifyCodeController{
         
         String? verifycode;
         TextEditingController?  email;

        @override
        checkcode() {
        
        }
        
          @override
          goToResetPassword() {
            Get.offNamed(AppRoute.resetPassword);
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

