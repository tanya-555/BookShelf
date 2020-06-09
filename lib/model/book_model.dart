import 'package:flutter/material.dart';

class BookModel with ChangeNotifier {
  final String title;
  final String author;
  final double rating;
  final int year;
  final int pages;
  final String language;
  final String summary;
  final List<int> categories;
  final String image;
  bool isBookmarked;

  BookModel({
    @required this.title,
    @required this.author,
    @required this.rating,
    @required this.year,
    @required this.pages,
    @required this.language,
    @required this.categories,
    @required this.summary,
    @required this.image,
    this.isBookmarked,
  });

  void toggleBookmark() {
    isBookmarked = !isBookmarked;
    notifyListeners();
  }
}
