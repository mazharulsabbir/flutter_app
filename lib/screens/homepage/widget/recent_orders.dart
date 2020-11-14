import 'package:flutter/material.dart';
import 'package:flutter_app/data/model/recent_order.dart';
import 'package:flutter_app/screens/homepage/view/item_detail.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RecentOrder {
  final List<Order> recentOrders;

  RecentOrder({this.recentOrders});

  Widget recentOrderListBuilder() {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: recentOrders.length,
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          onTap: () {
            print(recentOrders[index].dish.name);
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ItemDetails(
                  dish: recentOrders[index].dish,
                ),
              ),
            );
          },
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              border: Border.all(width: 1),
            ),
            margin: EdgeInsets.only(right: 10),
            child: Row(
              children: <Widget>[
                Container(
                  height: 80,
                  width: 80,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(4.0),
                    child: Image.network(
                      recentOrders[index].dish.imgUrl,
                      fit: BoxFit.cover,
                      // semanticsLabel: recentOrders[index].dish.name,
                      // placeholderBuilder: (BuildContext context) => Container(
                      //   padding: const EdgeInsets.all(20.0),
                      //   // height: 50,
                      //   // width: 50,
                      //   child: const CircularProgressIndicator(),
                      // ),
                    ),
                  )
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  width: 150,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Flexible(
                        child: RichText(
                          overflow: TextOverflow.ellipsis,
                          text: TextSpan(
                            text: recentOrders[index].dish.name,
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Text(
                        "Pieces ${recentOrders[index].dish.noOfPieces}",
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        recentOrders[index].orderDate,
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
