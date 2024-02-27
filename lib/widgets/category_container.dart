import 'package:flutter/material.dart';
import 'package:untitled/models/category_model.dart';
import 'package:untitled/views/categories_view.dart';

class CategoryContainer extends StatelessWidget {
  const CategoryContainer({
    super.key,
    required this.categoryModel,
  });
  final CategoryModel categoryModel;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => CategoriesView(
                      name: categoryModel.name,
                    )));
      },
      child: Container(
        height: 65,
        padding: const EdgeInsetsDirectional.symmetric(
          horizontal: 16,
          vertical: 16,
        ),
        width: double.infinity,
        color: categoryModel.color,
        child: Text(
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
          categoryModel.name,
        ),
      ),
    );
  }
}
