
import 'package:eshop/core/class/crud.dart';
import 'package:eshop/linkapi.dart';

class LoginData {

  Crud crud;

  LoginData(this.crud);
  postdata(String  email, password) async {
    var response = await crud.postData(AppLink.login,{   
      "email" : email,
      "password" : password,
    });
    return response.fold((l) => l, (r) => r);
  }
  
}