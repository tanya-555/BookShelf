import 'package:bookshelf/data/category_data.dart';
import 'package:bookshelf/widgets/category_item.dart';
import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
      children: CATEGORY_DATA
          .map((catData) => new CategoryItem(catData.name, catData.image))
          .toList(),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
    );
  }
}
