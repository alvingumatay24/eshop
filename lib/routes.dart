//ignore_for_file: prefer_const_constructors


import 'package:eshop/core/constant/routes.dart';
import 'package:eshop/view/screen/auth/forgetpassword/forgetpassword.dart';
import 'package:eshop/view/screen/auth/login.dart';
import 'package:eshop/view/screen/auth/forgetpassword/resetpassword.dart';
import 'package:eshop/view/screen/auth/signup.dart';
import 'package:eshop/view/screen/auth/success.dart';
import 'package:eshop/view/screen/auth/success_signup.dart';
import 'package:eshop/view/screen/auth/forgetpassword/verifycode.dart';
import 'package:eshop/view/screen/auth/verfycodesignup.dart';
import 'package:eshop/view/screen/onboarding.dart';
// import 'package:flutter/material.dart';
import 'package:get/get.dart';


List<GetPage<dynamic>>? routes = [
   GetPage(name: AppRoute.login, page: ()=> Login()),
   GetPage(name: AppRoute.signUp, page: ()=> SignUp()),
   GetPage(name: AppRoute.forgetPassword, page: ()=> ForgetPassword()), 
   GetPage(name: AppRoute.verifyCode, page: ()=> VerifyCode()),
   GetPage(name: AppRoute.resetPassword, page: ()=> ResetPassword()),
   GetPage(name: AppRoute.onBoarding, page: ()=> Onboarding()),
   GetPage(name: AppRoute.successResetPassword, page: ()=> SuccessResetPassword()),
   GetPage(name: AppRoute.successSignUp, page: ()=> SuccessSignUp()),
   GetPage(name: AppRoute.verifyCodeSignUp, page: ()=> VerifyCodeSignUp()),
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