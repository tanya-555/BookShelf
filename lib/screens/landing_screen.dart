import 'package:flutter/material.dart';
import 'package:bookshelf/widgets/category.dart';

class LandingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Book Shelf"),
      ),
      body: Category(),
    );
  }
}
