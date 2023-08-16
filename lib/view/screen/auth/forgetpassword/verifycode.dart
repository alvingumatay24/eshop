
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, deprecated_member_use

// import 'package:eshop/controller/auth/forgetpassword_controller.dart';
import 'package:eshop/controller/auth/verifycode_controller.dart';
import 'package:eshop/core/constant/color.dart';
import 'package:eshop/core/functions/alertexitapp.dart';
import 'package:eshop/view/widget/auth/custombottomauth.dart';
import 'package:eshop/view/widget/auth/customtextbodyaut.dart';
import 'package:eshop/view/widget/auth/customtexttitleauth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';


class VerifyCode extends StatelessWidget {
  
  const VerifyCode({super.key});

  @override
  Widget build(BuildContext context) {
  
    VerifyCodeControllerImp controller = Get.put(VerifyCodeControllerImp());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.backgroundColor,
        elevation: 0.0,
        title:  Text('Verification Code ', style:  Theme.of(context).textTheme.headline1!.copyWith(color: AppColor.grey)),
        centerTitle: true,
      ),
      body: WillPopScope(
        onWillPop: alertExitApp,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 40),
          child: ListView(children: [     
            CustomTextTitleAuth(text: 'Check Code',),
             const SizedBox(height: 18),
            CustomBodyTextAuth(text: 'Please Enter The Digit Code sent to your Email', ),
            const SizedBox(height: 18),
              OtpTextField(
                fieldWidth: 50.0,
              numberOfFields: 5,
              borderRadius:  BorderRadius.circular(20),
              borderColor: Color(0xFF512DA8),
              showFieldAsBox: true,
              onCodeChanged: (String code) {
                  //handle validation or checks here if necessary         
              },
              //runs when every textfield is filled 
              onSubmit: (String verificationCode) {
               }, 
               ),
              const SizedBox(height: 18),
              CustomButtomAuth(text: 'CHECK', onPressed: (){
                controller.goToResetPassword();
              },),
                SizedBox(height: 15),  
          ],),
        ),
      )
      
    );
  }
}
