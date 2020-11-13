import 'package:flutter/material.dart';

class CategoriesList extends StatelessWidget {
  final String categoryName;

  CategoriesList({this.categoryName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(categoryName),
      ),
    );
  }
}
