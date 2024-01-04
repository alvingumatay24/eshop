import 'package:eshop/core/class/statusrequest.dart';
import 'package:eshop/core/constant/routes.dart';
import 'package:eshop/core/functions/handlingdatacontroller.dart';
import 'package:eshop/data/datasource/remote/forgetpassword/verifycode.dart';

import 'package:get/get.dart';

    abstract  class  VerifyCodeController extends GetxController
    {
      checkcode();
      goToResetPassword(String verifycode);
    }
   class  VerifyCodeControllerImp extends VerifyCodeController{
         
        String? email;

            
        VerifyCodeForgetPasswordData verifyCodeForgetPasswordData =  VerifyCodeForgetPasswordData(Get.find());

          StatusRequest statusRequest = StatusRequest.none;

  
        @override
        checkcode() {}
        
          @override
          goToResetPassword(verifycode) async{
              statusRequest = StatusRequest.loading;
            update();
             var response = await verifyCodeForgetPasswordData.postdata(email!, verifycode );
            // ignore: avoid_print
          statusRequest = handlingData(response);
          if (StatusRequest.success == statusRequest){
            if(response['status']== "success"){
              Get.offNamed(AppRoute.resetPassword, arguments: {
                "email": email
              });
              // data?.addAll(response['data']);
           }else{
            Get.defaultDialog(title: "Warning", middleText: "Verify Code Not Correct.");
            statusRequest = StatusRequest.failure;
           }
           }
           update();
            Get.offNamed(AppRoute.resetPassword);
          }

      @override
         void onInit() {
        email =  Get.arguments['email'];
        super.onInit();
       }
   
      }

