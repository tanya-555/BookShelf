import 'package:bookshelf/data/category_data.dart';
import 'package:bookshelf/widgets/category_item.dart';
import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
      children: CATEGORY_DATA
          .map((catData) => new Container(
                padding: EdgeInsets.all(5),
                child: CategoryItem(catData.name, catData.image, catData.id),
              ))
          .toList(),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 300,
        childAspectRatio: 3 / 4,
      ),
    );
  }
}
