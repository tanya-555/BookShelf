import 'package:bookshelf/screens/listing_screen.dart';
import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final String name;
  final String image;
  final int id;

  CategoryItem(this.name, this.image, this.id);

  void _launchListingScreen(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) {
          return ListingScreen(
            catId: id,
            catName: name,
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        _launchListingScreen(context);
      },
      borderRadius: BorderRadius.circular(5),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            image: new DecorationImage(
              image: new AssetImage(image),
              fit: BoxFit.fill,
            )),
        child: Container(
          alignment: Alignment.center,
          child: Text(
            name,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              fontSize: 30,
            ),
          ),
        ),
      ),
    );
  }
}
