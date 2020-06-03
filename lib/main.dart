import 'package:bookshelf/screens/landing_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(BookShelfApp());
}

class BookShelfApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Book Shelf",
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: LandingScreen(),
    );
  }
}
