import 'package:flutter/material.dart';
import 'package:flutter_app/data/repository/fake_data_repository.dart';
import 'package:flutter_app/screens/homepage/widget/category_list.dart';
import 'package:flutter_app/screens/homepage/widget/recent_orders.dart';
import 'package:flutter_app/screens/homepage/widget/recommended_item.dart';

class HomePage extends StatelessWidget {
  final _data = FakeDataRepository();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              TextField(
                autofocus: false,
                decoration: InputDecoration(
                  labelText: 'What you are carving for?',
                  hintText: 'eg. steak, meet...',
                  border: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(8.0),
                    borderSide: BorderSide(),
                  ),
                  // prefixIcon: Icon(Icons.search),
                  suffixIcon: Icon(Icons.search),
                ),
              ),
              _exploreByCategoryWidget(),
              _orderAgainWidget(),
              _recommendedWidget(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _exploreByCategoryWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(
          height: 20,
        ),
        Text(
          'Explore By Category',
          style: TextStyle(fontSize: 22),
        ),
        SizedBox(
          height: 10,
        ),
        SizedBox(
          height: 125,
          child: Categories(
            categories: _data.getCategories(),
          ).categoryListBuilder(),
        ),
      ],
    );
  }

  Widget _orderAgainWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(
          height: 20,
        ),
        Text(
          'Order Again',
          style: TextStyle(fontSize: 22),
        ),
        SizedBox(
          height: 10,
        ),
        SizedBox(
          height: 100,
          child: RecentOrder(
            recentOrders: _data.getRecentOrders(),
          ).recentOrderListBuilder(),
        ),
      ],
    );
  }

  Widget _recommendedWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(
          height: 20,
        ),
        Text(
          'Recommended',
          style: TextStyle(fontSize: 22),
        ),
        SizedBox(
          height: 10,
        ),
        ListView.separated(
          separatorBuilder: (context, index) => Divider(
            color: Colors.black,
          ),
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: _data.getDishItemList().length,
          itemBuilder: (context, index) {
            return RecommendedItemWidget(
              dish: _data.getDishItemList()[index],
            );
          },
        ),
      ],
    );
  }
}
