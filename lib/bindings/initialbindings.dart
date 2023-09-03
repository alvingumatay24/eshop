import 'package:eshop/core/class/crud.dart';
import 'package:get/get.dart';


// ignore: camel_case_types
class initialBindings extends Bindings {
     @override
     void dependencies(){
      Get.put(Crud());
     }
}