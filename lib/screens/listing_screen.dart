import 'package:bookshelf/widgets/book_list.dart';
import 'package:flutter/material.dart';

class ListingScreen extends StatelessWidget {
  final String catName;
  final int catId;

  ListingScreen({
    @required this.catName,
    @required this.catId,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(catName),
      ),
      body: BookList(),
    );
  }
}
