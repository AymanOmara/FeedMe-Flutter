import 'package:flutter/material.dart';
import 'package:mealdb/repo.dart';
import 'package:mealdb/categories.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  State<CategoryPage> createState() {
    return _CategoryPageState();
  }
}

class _CategoryPageState extends State<CategoryPage> {
  final Repo _repo = Repo();
  MyCategory cat = MyCategory();
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("title"),
      ),
      body: Center(
        child: FutureBuilder<List<MyCategory>>(
          future: _repo.getCategories(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return GridView.builder(
                  scrollDirection: Axis.vertical,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisExtent: 260,
                  ),
                  itemCount: snapshot.data!.length,
                  itemBuilder: (BuildContext ctx, index) {
                    return buildCard(snapshot.data![index]);
                  });
            } else {
              return const CircularProgressIndicator();
            }
          },
        ),
      ),
    );
  }

  Widget buildCard(MyCategory? category) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Card(
          margin: const EdgeInsets.all(0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Image.network(category!.categoryThumb!),
              Text(category.categoryName!)
            ],
          ),
        ),
      ),
    );
  }
}
