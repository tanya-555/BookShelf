import 'package:bookshelf/model/book_model.dart';
import 'package:bookshelf/widgets/details_tab.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  static const routeName = '/details';

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, Object>;
    final BookModel model = routeArgs['book_model'];
    return Scaffold(
      appBar: AppBar(
        title: Text(model.title),
      ),
      body: Container(
        child: Stack(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width * 1,
              height: MediaQuery.of(context).size.height * 0.5,
              decoration: BoxDecoration(
                image: new DecorationImage(
                  image: AssetImage(model.image),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.4),
              width: MediaQuery.of(context).size.width * 1,
              height: MediaQuery.of(context).size.height * 0.5,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10),
                  topLeft: Radius.circular(10),
                ),
              ),
              child: DetailsTab(
                model: model,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
