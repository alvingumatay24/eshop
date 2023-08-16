import 'package:eshop/core/constant/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

    abstract  class  VerifyCodeSignUpController extends GetxController
    {
      checkcode();
      goToSuccessSignUp();
    }
   class  VerifyCodeSignUpControllerImp extends VerifyCodeSignUpController{
         
         String? verifycode;
         TextEditingController?  email;

        @override
        checkcode() {
        
        }
        
          @override
          goToSuccessSignUp() {
            Get.offNamed(AppRoute.successSignUp);
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

