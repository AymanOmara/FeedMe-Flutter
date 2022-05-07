import 'dart:convert';

import 'package:http/http.dart' as http;

import 'categories.dart';

class Repo {
  Future<List<MyCategory>> getCategories() async {
    http.Response response = await http.get(
        Uri.parse("https://www.themealdb.com/api/json/v1/1/categories.php"));
    var json = jsonDecode(response.body);
    List<MyCategory> cat = [];

    for (var categoryJson in json["categories"]) {
      cat.add(MyCategory.fromJson(categoryJson));
    }

    return cat;
  }
}
