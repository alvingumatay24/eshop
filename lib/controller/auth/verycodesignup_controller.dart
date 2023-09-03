import 'package:eshop/core/class/statusrequest.dart';
import 'package:eshop/core/constant/routes.dart';
import 'package:eshop/core/functions/handlingdatacontroller.dart';
import 'package:eshop/data/datasource/remote/auth/verifycodesignup.dart';
// import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

    abstract  class  VerifyCodeSignUpController extends GetxController
    {
      checkcode();
      goToSuccessSignUp(String verifyCodeSignUp);
    }
   class  VerifyCodeSignUpControllerImp extends VerifyCodeSignUpController{

     VerifyCodeSignUpData verifyCodeSignUpData =  VerifyCodeSignUpData(Get.find());
         
         late String verifycode;
          String? email;

         StatusRequest? statusRequest;

        @override
        checkcode() {
        
        }
        
          @override
          goToSuccessSignUp(verifyCodeSignUp) async {
              statusRequest = StatusRequest.loading;
            update();
             var response = await verifyCodeSignUpData.postdata(email!, verifyCodeSignUp );
            // ignore: avoid_print
          statusRequest = handlingData(response);
          if (StatusRequest.success == statusRequest){
            if(response['status']== "success"){
              Get.offNamed(AppRoute.successSignUp);
              // data?.addAll(response['data']);
           }else{
            Get.defaultDialog(title: "Warning", middleText: "Verify Code Not Correct.");
            statusRequest = StatusRequest.failure;
           }
           }
           update();
          }

      @override
         void onInit() {
        email =  Get.arguments['email'];
        super.onInit();
       }
    
      }
