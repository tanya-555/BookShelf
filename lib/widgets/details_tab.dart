import 'package:bookshelf/model/book_model.dart';
import 'package:flutter/material.dart';

class DetailsTab extends StatefulWidget {
  final BookModel model;

  DetailsTab({
    @required this.model,
  });

  @override
  State<StatefulWidget> createState() {
    return _DetailsTabState(model: model);
  }
}

class _DetailsTabState extends State<DetailsTab> {
  final BookModel model;

  _DetailsTabState({
    @required this.model,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.details),
                text: 'Details',
              ),
              Tab(
                icon: Icon(Icons.add_to_photos),
                text: 'Overview',
              )
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[],
        ),
      ),
    );
  }
}
