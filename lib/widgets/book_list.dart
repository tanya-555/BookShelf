import 'package:bookshelf/data/book_data.dart';
import 'package:bookshelf/model/book_model.dart';
import 'package:bookshelf/widgets/book_item.dart';
import 'package:flutter/material.dart';

class BookList extends StatelessWidget {
  final int catId;
  List<BookModel> bookList = [];

  BookList({
    @required this.catId,
  });

  void _makeList() {
    BOOK_DATA.forEach((element) {
      if (element.categories.contains(catId)) {
        bookList.add(element);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    _makeList();
    return ListView.builder(
        itemBuilder: (ctx, index) {
          return BookItem(model: bookList[index]);
        },
        itemCount: bookList.length);
  }
}
