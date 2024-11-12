import 'package:flutter/material.dart';
import 'package:labwork/screens/categories/category_screen.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CategoryScreen(),
    );
  }
}