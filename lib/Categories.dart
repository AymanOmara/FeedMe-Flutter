class MyCategory {
  String? id;
  String? categoryName;
  String? categoryThumb;
  String? categoryDescription;
  MyCategory();
  MyCategory.fromJson(Map<String, dynamic> json) {
    id = json["idCategory"];
    categoryName = json["strCategory"];
    categoryThumb = json["strCategoryThumb"];
    categoryDescription = json["strCategoryDescription"];
  }
}
