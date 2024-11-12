import 'package:flutter/material.dart';
import 'package:labwork/screens/recipe/recipe_listing.dart';
import '../../data/categories.dart';

class CategoryScreen extends StatefulWidget {
  CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pinoy Recipe"),
      ),
      body: Padding(
        padding: EdgeInsets.all(8),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
              childAspectRatio: 3 / 2),
          itemBuilder: (_, index) {
            final cat = category[index];
            return GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (_) => RecipeListing(item: cat)));
              },
              child: Container(
                child: Center(
                    child: Text(
                  cat.name,
                  style: TextStyle(color: Colors.white, fontSize: 20),
                )),
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    gradient: LinearGradient(
                        colors: [cat.color, cat.color.withOpacity(.7)])),
              ),
            );
          },
          itemCount: category.length,
        ),
      ),
    );
  }
}
