import 'package:flutter/material.dart';
import 'package:flutter_app/data/model/category.dart';
import 'package:flutter_app/screens/categories_list/ui/categories_list.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Categories {
  final List<Category> categories;

  Categories({this.categories});

  Widget categoryListBuilder() {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: categories.length,
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          onTap: () {
            var name = categories[index].name;
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CategoriesList(
                  categoryName: name,
                ),
              ),
            );
          },
          child: Container(
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(4),
                      child: SvgPicture.network(
                        categories[index].imgUrl,
                        height: 80.0,
                        width: 80.0,
                        fit: BoxFit.cover,
                        semanticsLabel: categories[index].name,
                        placeholderBuilder: (BuildContext context) => Container(
                          padding: const EdgeInsets.all(20.0),
                          height: 80,
                          width: 80,
                          child: const CircularProgressIndicator(),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Text(categories[index].name)
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
