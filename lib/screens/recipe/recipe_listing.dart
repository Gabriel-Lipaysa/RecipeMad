import 'package:flutter/material.dart';
import 'package:labwork/data/categories.dart';
import 'package:labwork/model/recipe.dart';

class RecipeListing extends StatelessWidget {
  RecipeListing({super.key, required this.item});
  Categories item;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(item.name),
        backgroundColor: item.color,
      ),
      body: ListView.builder(
        itemCount: recipeList.length,
        itemBuilder: (BuildContext context, int index) {
          final recipeItem = recipeList[index];
          return Card(
            child: Column(
              children: [
                AspectRatio(
                  aspectRatio: 3 / 2,
                  child: recipeItem.imgUrl != null
                      ? Image.network(recipeItem.imgUrl!)
                      : Text("no img"),
                ),
                Text(recipeItem.name),
              ],
            ),
          );
        },
      ),
    );
  }
}
