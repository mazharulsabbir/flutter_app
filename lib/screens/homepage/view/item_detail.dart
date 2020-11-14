import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/data/model/dish_item.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ItemDetails extends StatelessWidget {
  final _iconSet = [Icons.favorite_border, Icons.favorite];
  final _iconIndex = 0;
  final Dish dish;

  ItemDetails({this.dish});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, bool) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: 150.0,
              floating: false,
              pinned: true,
              actions: <Widget>[
                IconButton(
                  icon: Icon(
                    _iconSet[_iconIndex],
                  ),
                  onPressed: () {},
                ),
              ],
              flexibleSpace: FlexibleSpaceBar(
                collapseMode: CollapseMode.parallax,
                background: Image.network(
                  dish.imgUrl,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ];
        },
        body: _body(dish),
      ),
      bottomNavigationBar: SizedBox(
        height: 120,
        child: _bottomNavigation(),
      ),
    );
  }
}

Widget _body(Dish dish) {
  var _boxString = [
    "Net weight of prepped meat only",
    "Temperature between 4 °C - 8 °C",
  ];
  var _boxImgUrl = [
    "https://www.flaticon.com/svg/static/icons/svg/3638/3638036.svg",
    "https://www.flaticon.com/svg/static/icons/svg/1684/1684375.svg",
  ];
  return SingleChildScrollView(
    child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          RichText(
            text: TextSpan(
              text: dish.name,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            softWrap: true,
            overflow: TextOverflow.visible,
          ),
          SizedBox(
            height: 4,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              RatingBar(
                initialRating: dish.rating == null ? 0 : dish.rating,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemSize: 13,
                ratingWidget: RatingWidget(
                  full: Icon(Icons.star),
                  half: Icon(Icons.star_half),
                  empty: Icon(Icons.star_border),
                ),
                // itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                onRatingUpdate: (rating) {
                  print(rating);
                },
              ),
              SizedBox(
                width: 8,
              ),
              Text("${dish.ratingCount} votes")
            ],
          ),
          SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SvgPicture.network(
                    "https://www.flaticon.com/svg/static/icons/svg/2163/2163975.svg",
                    height: 18,
                    width: 18,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  RichText(
                    softWrap: true,
                    overflow: TextOverflow.visible,
                    text: TextSpan(
                      text: "No. of pieces ${dish.noOfPieces}",
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SvgPicture.network(
                    "https://www.flaticon.com/svg/static/icons/svg/2928/2928934.svg",
                    height: 18,
                    width: 18,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  RichText(
                    softWrap: true,
                    overflow: TextOverflow.visible,
                    text: TextSpan(
                      text: "Net wt. ${dish.netWt}",
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Instructions",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 8,
          ),
          RichText(
            softWrap: true,
            overflow: TextOverflow.visible,
            text: TextSpan(text: "${dish.instruction}"),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "What's in your Box",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 70,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: _boxString.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    border: Border.all(width: 1),
                  ),
                  margin: EdgeInsets.only(right: 10),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      children: <Widget>[
                        Container(
                          height: 40,
                          width: 40,
                          child: SvgPicture.network(
                            _boxImgUrl[index],
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: 120,
                          child: RichText(
                            softWrap: true,
                            overflow: TextOverflow.visible,
                            text: TextSpan(
                              text: _boxString[index],
                              style: TextStyle(fontSize: 12),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(
            height: 50,
          ),
          _droneParcel()
        ],
      ),
    ),
  );
}

Widget _droneParcel() {
  var _droneImgUrl =
      "https://www.flaticon.com/svg/static/icons/svg/3180/3180151.svg";
  return Container(
    padding: EdgeInsets.all(10),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8), color: Colors.amberAccent),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Free Drone Delivery",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "\$0 for 30 days",
              style: TextStyle(
                fontSize: 18,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "On order above \$100",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ],
        ),
        SvgPicture.network(
          _droneImgUrl,
          height: 100,
          width: 100,
        ),
      ],
    ),
  );
}

Widget _bottomNavigation() {
  return Padding(
    padding: const EdgeInsets.all(16.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              "Quantity",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
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
                        Icons.remove,
                        size: 18,
                      ),
                      onPressed: () {
                        print("minus");
                      },
                    ),
                  ),
                ),
                SizedBox(
                  width: 4,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    // color: Colors.white54,
                  ),
                  child: SizedBox(
                      height: 25,
                      width: 25,
                      child: Center(
                        child: Text(
                          "2",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )),
                ),
                SizedBox(
                  width: 4,
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
                        print("plus");
                      },
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.deepOrangeAccent),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("2 ITEM"),
                    Text(
                      "\$244 incl taxes",
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      RichText(
                        softWrap: true,
                        overflow: TextOverflow.visible,
                        text: TextSpan(
                          text: "View Cart",
                        ),
                      ),
                      Icon(Icons.keyboard_arrow_right),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
