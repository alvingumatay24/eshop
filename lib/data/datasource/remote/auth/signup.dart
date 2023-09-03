
import 'package:eshop/core/class/crud.dart';
import 'package:eshop/linkapi.dart';

class SignupData {

  Crud crud;

  SignupData(this.crud);
  postdata(String username, email, password, phone) async {
    var response = await crud.postData(AppLink.signUp,{
      "username" : username,
      "email" : email,
      "password" : password,
      "phone" : phone,
    });
    return response.fold((l) => l, (r) => r);
  }
  
}