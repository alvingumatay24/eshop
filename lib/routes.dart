//ignore_for_file: prefer_const_constructors
import 'package:eshop/core/constant/routes.dart';
// import 'package:eshop/test.dart';
// import 'package:eshop/test_view.dart';
import 'package:eshop/view/screen/auth/forgetpassword/forgetpassword.dart';
import 'package:eshop/view/screen/auth/login.dart';
import 'package:eshop/view/screen/auth/forgetpassword/resetpassword.dart';
import 'package:eshop/view/screen/auth/signup.dart';
import 'package:eshop/view/screen/auth/forgetpassword/successresetpassword.dart';
import 'package:eshop/view/screen/auth/success_signup.dart';
import 'package:eshop/view/screen/auth/forgetpassword/verifycode.dart';
import 'package:eshop/view/screen/auth/verfycodesignup.dart';
import 'package:eshop/view/screen/cart.dart';
// import 'package:eshop/view/screen/home.dart';
import 'package:eshop/view/screen/homescreen.dart';
import 'package:eshop/view/screen/items.dart';
import 'package:eshop/view/screen/onboarding.dart';
// import 'package:eshop/view/screen/productdetails.dart';
import 'package:eshop/view/screen/productdetails.dart';
// import 'package:flutter/material.dart';
import 'package:get/get.dart';


List<GetPage<dynamic>>? routes = [
    // GetPage(name: "/", page: ()=> Cart()),
  GetPage(name:   AppRoute.cart, page: ()=> Cart()),
   GetPage(name: AppRoute.login, page: ()=> Login()),
   GetPage(name: AppRoute.signUp, page: ()=> SignUp()),
   GetPage(name: AppRoute.forgetPassword, page: ()=> ForgetPassword()), 
   GetPage(name: AppRoute.verifyCode, page: ()=> VerifyCode()),
   GetPage(name: AppRoute.resetPassword, page: ()=> ResetPassword()),
   GetPage(name: AppRoute.onBoarding, page: ()=> Onboarding()),
   GetPage(name: AppRoute.successResetpassword, page: ()=> SuccessResetPassword()),
   GetPage(name: AppRoute.successSignUp, page: ()=> SuccessSignUp()),
   GetPage(name: AppRoute.verifyCodeSignUp, page: ()=> VerifyCodeSignUp()),
   GetPage(name: AppRoute.homepage, page: ()=> HomeScreen()),
    //  GetPage(name: AppRoute.homepage, page: ()=> ProductDetails()),
   GetPage(name: AppRoute.items, page: ()=> Items()),
   GetPage(name: AppRoute.productdetails, page: ()=> ProductDetails()),
   
];

// Map<String, Widget Function(BuildContext)> routess = {
//    AppRoute.login : (context)=> const Login(),
//    AppRoute.signUp : (context)=> const SignUp(),
//    AppRoute.forgetPassword : (context)=> const ForgetPassword(),
//    AppRoute.verifyCode : (context)=> const VerifyCode(),
//    AppRoute.resetPassword : (context)=> const ResetPassword(),
//    AppRoute.onBoarding : (context)=> const Onboarding(),
//    AppRoute. successResetPassword: (context)=> SuccessResetPassword(),
//    AppRoute. successSignUp : (context)=> const SuccessSignUp(),
//    AppRoute. verifyCodeSignUp: (context)=> const VerifyCodeSignUp(),
// };