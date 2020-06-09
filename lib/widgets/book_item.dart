import 'package:bookshelf/model/book_model.dart';
import 'package:bookshelf/screens/details_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BookItem extends StatelessWidget {
  void _launchDetailsScreen(BuildContext context, BookModel model) {
    Navigator.of(context).pushNamed(DetailsScreen.routeName, arguments: {
      'book_model': model,
    });
  }

  Widget _getBookmark(bool isBookmarked) {
    if (isBookmarked) {
      return Icon(
        Icons.bookmark,
        size: 38,
        color: Colors.red,
      );
    }
    return Icon(
      Icons.bookmark_border,
      size: 38,
      color: Colors.red,
    );
  }

  @override
  Widget build(BuildContext context) {
    final book = Provider.of<BookModel>(context, listen: false);
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
              child: InkWell(
                onTap: () {
                  _launchDetailsScreen(context, book);
                },
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
                            image: AssetImage(book.image),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(10),
                width: MediaQuery.of(context).size.width * 1,
                height: MediaQuery.of(context).size.height * 0.1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      book.title,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Consumer<BookModel>(
                      builder: (ctx, book, child) => InkWell(
                        onTap: () {
                          book.toggleBookmark();
                        },
                        child:
                            Container(child: _getBookmark(book.isBookmarked)),
                      ),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
