import 'package:bookshelf/screens/landing_screen.dart';
import 'package:bookshelf/screens/listing_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
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
      //home: LandingScreen(),
      initialRoute: '/',
      routes: {
        '/': (context) => LandingScreen(),
        ListingScreen.routeName: (context) => ListingScreen(),
      },
      onGenerateRoute: (settings) {
        return MaterialPageRoute(
          builder: (context) => ListingScreen()
        );
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(
          builder: (context) => ListingScreen()
        );
    }
    );
  }
}
