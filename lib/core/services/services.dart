// ignore_for_file: non_constant_identifier_names

import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyServices extends GetxService {

  SharedPreferences? sharedPreferences;
  
  Future<MyServices> init() async {
    sharedPreferences = await SharedPreferences.getInstance();
    return this;
   }
  }
  InitialServices() async{
    await Get.putAsync(() => MyServices().init());
  }

