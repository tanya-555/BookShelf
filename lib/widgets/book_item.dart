import 'package:bookshelf/model/book_model.dart';
import 'package:flutter/material.dart';

class BookItem extends StatelessWidget {
  final BookModel model;

  BookItem({
    @required this.model,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          children: <Widget>[
            Container(
              width: 500,
              height: 400,
              decoration: BoxDecoration(
                image: new DecorationImage(
                  image: AssetImage(
                    model.image,
                  ),
                ),
              ),
            ),
            Container(
              child: Text(
                model.title,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
            )
          ],
        ));
  }
}
