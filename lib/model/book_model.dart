import 'package:flutter/material.dart';

class BookModel {
  final String title;
  final String author;
  final double rating;
  final int year;
  final int pages;
  final String language;
  final List<int> categories;
  final String image;

  const BookModel({
    @required this.title,
    @required this.author,
    @required this.rating,
    @required this.year,
    @required this.pages,
    @required this.language,
    @required this.categories,
    @required this.image,
  });
}
