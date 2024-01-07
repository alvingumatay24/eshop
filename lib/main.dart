// ignore_for_file: deprecated_member_use, prefer_const_constructors

// import 'package:eshop/data/datasource/static/static.dart';
// import 'package:eshop/binding.dart';
import 'package:eshop/bindings/initialbindings.dart';
import 'package:eshop/core/services/services.dart';
import 'package:eshop/routes.dart';
import 'package:eshop/view/screen/auth/login.dart';
// import 'package:eshop/test.dart';
// import 'package:eshop/routes.dart';
// import 'package:eshop/test.dart';
// import 'package:eshop/view/screen/onboarding.dart';


import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'core/constant/color.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await InitialServices();
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'PlayfairDisplay',
        textTheme:  TextTheme(headline1:const TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: AppColor.black),
         bodyText1: const TextStyle(height: 2, color: AppColor.grey, fontWeight: FontWeight.bold, fontSize: 14),
         bodyText2: const TextStyle(height: 2, color: AppColor.grey, fontWeight: FontWeight.bold, fontSize: 12),),
        primarySwatch: Colors.blue,
      ),
     
      // home: Onboarding(),
      
      home:Login(),
      initialBinding: initialBindings(),
      // routes: routes,
      //ignore: prefer_const_literals_to_create_immutables
      getPages: routes,
    );
  }
}


