import 'package:flutter/material.dart';
import 'package:untitled/models/category_model.dart';
import 'package:untitled/widgets/category_container.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  final List<CategoryModel> category = const [
    CategoryModel(
      name: 'Numbers',
      color: Colors.orange,
    ),
    CategoryModel(
      name: 'Family Members',
      color: Colors.green,
    ),
    CategoryModel(
      name: 'Colors',
      color: Colors.purple,
    ),
    CategoryModel(
      name: 'Phrases',
      color: Colors.cyan,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Toku'),
      ),
      body: Container(
        width: double.infinity,
        color: Colors.white70,
        child: Column(
          children: category
              .map(
                (e) => CategoryContainer(
                  categoryModel: e,
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
