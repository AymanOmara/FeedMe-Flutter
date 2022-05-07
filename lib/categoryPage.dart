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
            return GridView.count(
                primary: false,
                padding: const EdgeInsets.all(20),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 2,
                children: <Widget>[
                  buildCard(snapshot.data![0]),
                  buildCard(snapshot.data![1]),
                  buildCard(snapshot.data![3]),
                ]);
            // return Column(
            //   children: <Widget>[
            //     buildCard(snapshot.data![0]),
            //     buildCard(snapshot.data![1]),
            //     buildCard(snapshot.data![3]),
            //   ],
            // );
          } else {
            return const CircularProgressIndicator();
          }
        },
      )),
    );
  }

  Widget buildCard(MyCategory? category) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Card(
          margin: const EdgeInsets.all(1),
          child: Column(
            children: <Widget>[
              Image.network(category!.categoryThumb!),
              Text(category.categoryName!)
            ],
          )),
    );
  }
}
