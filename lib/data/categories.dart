import 'package:flutter/material.dart';

class Categories {
  late int id;
  late String name;
  late Color color;
  Categories({required this.id, required this.name, required this.color});
}

List<Categories> category = [
  Categories(id: 1, name: "Kapangpangan", color: Colors.red),
  Categories(id: 2, name: "Iloko", color: Colors.green),
  Categories(id: 3, name: "Cebuano", color: Colors.yellow),
  Categories(id: 4, name: "Chocolate", color: Colors.blue),
];
