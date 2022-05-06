import 'dart:convert';
import 'package:http/http.dart' as http;

import 'Categories.dart';
class Repo{
  Future<List<Category>> getCategories() async{
    http.Response response = await http.get(Uri.parse("https://www.themealdb.com/api/json/v1/1/categories.php"));
    var json = jsonDecode(response.body);
    List<Category> cat = [];

    for (var categoryJson in json["categories"]){
    cat.add(Category.fromJson(categoryJson));
    }

    return cat;
  }
}