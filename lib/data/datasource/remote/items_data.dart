import 'package:eshop/core/class/crud.dart';
import 'package:eshop/linkapi.dart';

class ItemsData {

  Crud crud;

ItemsData(this.crud);
  getData(String id, String usersid ) async {
    var response = await crud.postData(AppLink.items,{"id": id.toString(), "usersid": usersid});
    return response.fold((l) => l, (r) => r);
  }
  
}