

import 'package:eshop/core/class/crud.dart';
import 'package:eshop/linkapi.dart';

class TestData {

  Crud crud;

  TestData(this.crud);
  postdata(String username, password, email, phone) async {
    var response = await crud.postData(AppLink.test,{});
    return response.fold((l) => l, (r) => r);
  }
  
}