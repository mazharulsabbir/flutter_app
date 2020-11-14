import 'package:flutter/material.dart';
import 'package:flutter_app/data/model/dish_item.dart';
import 'package:flutter_app/screens/homepage/view/item_detail.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RecommendedItemWidget extends StatelessWidget {
  final Dish dish;

  RecommendedItemWidget({this.dish});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ItemDetails(dish: dish,),
          ),
        );
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(4),
                child: Image.network(
                  dish.imgUrl,
                  height: 70.0,
                  width: 100.0,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    dish.name,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Net wt. ${dish.netWt}",
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "\$${dish.price}",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.deepOrangeAccent[200]),
            child: SizedBox(
              height: 25,
              width: 25,
              child: IconButton(
                padding: EdgeInsets.all(0),
                icon: Icon(
                  Icons.add,
                  size: 18,
                ),
                onPressed: () {
                  print(dish.name);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
