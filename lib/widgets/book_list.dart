import 'package:bookshelf/data/book_data.dart';
import 'package:bookshelf/widgets/book_item.dart';
import 'package:flutter/material.dart';

class BookList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemBuilder: (ctx, index) {
          return BookItem(model: BOOK_DATA[index]);
        },
        itemCount: BOOK_DATA.length);
  }
}
