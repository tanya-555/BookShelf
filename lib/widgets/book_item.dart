import 'package:bookshelf/model/book_model.dart';
import 'package:bookshelf/screens/details_screen.dart';
import 'package:flutter/material.dart';

class BookItem extends StatelessWidget {
  final BookModel model;

  BookItem({
    @required this.model,
  });

  void _launchDetailsScreen(BuildContext context) {
    Navigator.of(context).pushNamed(DetailsScreen.routeName, arguments: {
      'book_model': model,
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(10),
              topLeft: Radius.circular(10),
            ),
            border: Border.all(
              color: Colors.white,
            )),
        child: Column(
          children: <Widget>[
            Container(
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10),
                    topLeft: Radius.circular(10)),
                child: Stack(
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width * 1,
                      height: MediaQuery.of(context).size.height * 0.5,
                      decoration: BoxDecoration(
                        image: new DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage(model.image),
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.bottomRight,
                      child: Icon(
                        Icons.bookmark_border,
                        size: 38,
                        color: Colors.red,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(10),
              width: MediaQuery.of(context).size.width * 1,
              height: MediaQuery.of(context).size.height * 0.1,
              child: Text(
                model.title,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
