class Category {
  String? idCategory;
  String? strCategory;
  String? strCategoryThumb;
  String? strCategoryDescription;

  Category(this.idCategory,this.strCategory,this.strCategoryDescription);
  Category.fromJson(Map<String, dynamic>json){
    idCategory = json["idCategory"];
    strCategory = json["strCategory"];
    strCategoryThumb = json["strCategoryThumb"];
    strCategoryDescription = json["strCategoryDescription"];
  }
}
