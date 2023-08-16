import 'package:eshop/core/constant/routes.dart';
import 'package:get/get.dart';

abstract class SuccessSignUpController extends GetxController {

  goToPageLogin();

}


class SuccessSignUpControllerImp extends SuccessSignUpController
{
 

   @override
   goToPageLogin(){
    Get.offNamed(AppRoute.login);
   }


  }