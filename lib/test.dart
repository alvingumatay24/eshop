
// ignore_for_file: prefer_const_constructors, avoid_print

// import 'package:eshop/core/functions/checkinternet.dart';
// import 'package:eshop/core/functions/checkinternet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
   

   // ignore: prefer_typing_uninitialized_variables
   var res;
   initialdata() async {
  //  res = await checkInternet();
    print(res);
   }


 @override
  void initState() {
    initialdata();
    super.initState();
  }

    @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text('Test'),
        centerTitle: true,     
      ),
      body:  ListView(children: [     
            const SizedBox(height: 18),
              OtpTextField(
                fieldWidth: 50.0,
              numberOfFields: 5,
              borderRadius:  BorderRadius.circular(20),
              showFieldAsBox: true,
              onCodeChanged: (String code) {
                  //handle validation or checks here if necessary         
              },
              //runs when every textfield is filled 
              onSubmit: (String verificationCode) {
               }, 
               ),
              const SizedBox(height: 18),
          ],),   
    );
  }
}