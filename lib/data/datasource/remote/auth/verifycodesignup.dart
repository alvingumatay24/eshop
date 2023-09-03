
import 'package:eshop/core/class/crud.dart';
import 'package:eshop/linkapi.dart';

class VerifyCodeSignUpData {

  Crud crud;

  VerifyCodeSignUpData(this.crud);
  postdata(String  email, verifycode) async {
    var response = await crud.postData(AppLink.verifycodessignup,{   
      "email" : email,
      "verifycode" : verifycode,
    });
    return response.fold((l) => l, (r) => r);
  }
  
}