import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final String _name;
  final String _image;

  CategoryItem(this._name, this._image);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          image: new DecorationImage(
            image: new AssetImage(_image),
            fit: BoxFit.fill,
          )),
      child: Container(
        alignment: Alignment.center,
        child: Text(
          _name,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            fontSize: 30,
          ),
        ),
      ),
    );
  }
}
