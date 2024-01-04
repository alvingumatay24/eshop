// ignore_for_file: unnecessary_new, unnecessary_this

class CartModel {
  String? itemsprice;
  String? countitems;
  String? cartId;
  String? cartUsersid;
  String? cartItemsid;
  String? itemsId;
  String? itemsName;
  String? itemsNameAr;
  String? itemsDesc;
  String? itemsDescAr;
  String? itemsImage;
  String? itemsCount;
  String? itemsActive;
  String? itemsPrice;
  String? itemsDiscount ;
  String? itemsDate;
  String? itemsCat;
  
CartModel({
 required this.itemsprice,
 required this.countitems,
 required this.cartId,
 required this.cartUsersid,
 required this.cartItemsid,
 required this.itemsId,
 required this.itemsName,
 required this.itemsNameAr,
 required this.itemsDesc,
 required this.itemsDescAr,
 required this.itemsImage,
 required this.itemsCount,
 required this.itemsActive,
 required this.itemsPrice,
 required this.itemsDiscount ,
 required this.itemsDate,
 required this.itemsCat,

});


 CartModel.fromJson(Map<String, dynamic> json){
  itemsprice = json['itemsprice'];
  countitems = json['countitems'];
  cartId = json['cart_id'];
  cartUsersid = json['cart_usersid'];
  cartItemsid = json['cart_itemsid'];
  itemsId = json['items_id'];
  itemsName = json['items_name'];
  itemsNameAr = json['items_name_ar'];
  itemsDesc = json['items_desc'];
  itemsDescAr = json['items_desc_ar'];
  itemsImage = json['items_image'];
  itemsCount = json['items_count'];
  itemsActive = json['items_active'];
  itemsPrice = json['items_price'];
  itemsDiscount = json['items_discount'];
  itemsDate = json['items_date'];
  itemsCat = json['items_cat'];
 
}

  Map<String, dynamic> toJson() {
       // ignore: prefer_collection_literals
       final Map<String, dynamic> data =  new Map<String, dynamic>();
        data['itemsprice'] =  this.itemsprice;
        data['countitems'] =  this.countitems;
        data['cart_id'] =  this.cartId;
        data['cart_usersid'] =  this.cartUsersid;
        data['cart_itemsid'] =  this.cartItemsid;
        data['items_id'] =  this.itemsId;
        data['items_name'] =  this.itemsName;
        data['items_name_ar'] =  this.itemsNameAr;
        data['items_desc'] =  this.itemsDesc;
        data['items_desc_ar'] =  this.itemsDescAr;
        data['items_image'] =  this.itemsImage;
        data['items_count'] =  this.itemsCount;
        data['items_active'] =  this.itemsActive;
        data['items_price'] =  this.itemsPrice;
        data['items_discount'] =  this.itemsDiscount ;
        data['items_date'] =  this.itemsDate;
        data['items_cat'] =  this.itemsCat;      
        return data;
      }
}

