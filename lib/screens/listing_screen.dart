import 'package:bookshelf/widgets/book_list.dart';
import 'package:flutter/material.dart';

class ListingScreen extends StatelessWidget {
  static const routeName = '/listing';

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, Object>;
    final catName = routeArgs['name'];
    final catId = routeArgs['id'];
    return Scaffold(
      appBar: AppBar(
        title: Text(catName),
      ),
      body: BookList(
        catId: catId,
      ),
    );
  }
}
