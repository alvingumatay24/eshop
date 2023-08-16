
import 'package:eshop/core/constant/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

    abstract  class  SignUpController extends GetxController
    {
      signUp();
      goToSignIn();
    }
   class  SignUpControllerImp extends SignUpController{
    GlobalKey<FormState>  formstate =     GlobalKey<FormState>();
         
         TextEditingController?  username;
         TextEditingController?  email;
         TextEditingController?  phone;
         TextEditingController?  password;
          bool isshowpassword = true;
    showPassword(){
      isshowpassword = isshowpassword == true ? false : true;
      update();
    }

        @override
        signUp() {
            if (formstate.currentState!.validate()) {
               Get.offNamed(AppRoute.verifyCodeSignUp);
            }else{
              // ignore: avoid_print
              print('Not Valid');
            }
           
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
       username!.dispose();
       email!.dispose();
       phone!.dispose();
       password!.dispose();
       super.dispose();
    } 
      }

