// ignore_for_file: unnecessary_new, unnecessary_this

class CategoriesModel {
  String? categoriesId;
  String?  categoriesName;
  String?  categoriesNameAr;
  String? categoriesImage;
  String? categoriesDateTime;
  
CategoriesModel({
 required this.categoriesId,
required this.categoriesName,
required this.categoriesNameAr,
required this.categoriesImage,
required this.categoriesDateTime
});


 CategoriesModel.fromJson(Map<String, dynamic> json){
   categoriesId = json['categories_id'];
  categoriesName = json['categories_name'];
  categoriesNameAr = json['categories_name_ar'];
  categoriesImage = json['categories_image'];
   categoriesDateTime= json['categories_datetime'];
}

  Map<String, dynamic> toJson() {
       // ignore: prefer_collection_literals
       final Map<String, dynamic> data =  new Map<String, dynamic>();
        data['categories_id'] =  this.categoriesId;
        data['categories_name'] =  this.categoriesName ;
        data['categories_name_ar'] =  this.categoriesNameAr;
        data['categories_image'] =  this.categoriesImage ;
        data['categories_datetime'] =  this.categoriesDateTime;
        return data;
      }
}

