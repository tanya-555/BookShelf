import 'package:bookshelf/screens/landing_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(BookShelfApp());
}

class BookShelfApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Book Shelf",
      theme: ThemeData(
        primarySwatch: Colors.purple,
        accentColor: Colors.deepPurpleAccent,
      ),
      home: LandingScreen(),
    );
  }
}
