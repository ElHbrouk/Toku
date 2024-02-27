import 'package:flutter/material.dart';
import 'package:untitled/constants.dart';
import 'package:untitled/widgets/item_widget.dart';

class CategoriesView extends StatelessWidget {
  const CategoriesView({super.key, required this.name});
  final String name;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text(name),
      ),
      body: ListView(
        children: lists[name]!
            .map((e) => ItemWidget(numberModel: e))
            .toList(),
      ),
    );
  }
}
