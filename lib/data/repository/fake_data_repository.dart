import 'package:flutter_app/data/model/category.dart';
import 'package:flutter_app/data/model/recent_order.dart';
import 'package:flutter_app/data/model/recommended.dart';

class FakeDataRepository {
  List<Category> getCategories() {
    var _list = List<Category>();
    _list.add(
      Category(
        id: 0,
        name: 'Steak',
        imgUrl:
            'https://www.flaticon.com/svg/static/icons/svg/3143/3143643.svg',
      ),
    );
    _list.add(
      Category(
        id: 1,
        name: 'Shrimp',
        imgUrl: 'https://www.flaticon.com/svg/static/icons/svg/909/909119.svg',
      ),
    );
    _list.add(
      Category(
        id: 2,
        name: 'Ham',
        imgUrl:
            'https://www.flaticon.com/svg/static/icons/svg/3076/3076125.svg',
      ),
    );
    _list.add(
      Category(
        id: 3,
        name: 'Fish',
        imgUrl:
            'https://www.flaticon.com/svg/static/icons/svg/2884/2884859.svg',
      ),
    );
    _list.add(
      Category(
        id: 4,
        name: 'Sushi',
        imgUrl:
            'https://www.flaticon.com/svg/static/icons/svg/2243/2243653.svg',
      ),
    );
    return _list;
  }

  List<Order> getRecentOrders() {
    var _list = List<Order>();
    _list.add(
      Order(
        id: 0,
        name: 'Chicken Drumstick',
        imgUrl:
            'https://www.flaticon.com/svg/static/icons/svg/3143/3143643.svg',
        price: 100,
        rate: 4.3,
        qty: '5-7',
        rateCount: 389,
        orderDate: "Orderd 2 days ago",
      ),
    );
    _list.add(
      Order(
        id: 1,
        name: 'Chicken Drumstick',
        imgUrl: 'https://www.flaticon.com/svg/static/icons/svg/909/909119.svg',
        price: 100,
        rate: 4.3,
        qty: '5-7',
        rateCount: 389,
        orderDate: "Orderd 2 days ago",
      ),
    );
    _list.add(
      Order(
        id: 2,
        name: 'Chicken Drumstick',
        imgUrl:
            'https://www.flaticon.com/svg/static/icons/svg/3076/3076125.svg',
        price: 100,
        rate: 4.3,
        qty: '5-7',
        rateCount: 389,
        orderDate: "Orderd 2 days ago",
      ),
    );
    _list.add(
      Order(
        id: 3,
        name: 'Chicken Drumstick',
        imgUrl:
            'https://www.flaticon.com/svg/static/icons/svg/2884/2884859.svg',
        price: 100,
        rate: 4.3,
        qty: '5-7',
        rateCount: 389,
        orderDate: "Orderd 2 days ago",
      ),
    );
    _list.add(
      Order(
        id: 4,
        name: 'Chicken Drumstick',
        imgUrl:
            'https://www.flaticon.com/svg/static/icons/svg/2243/2243653.svg',
        price: 100,
        rate: 4.3,
        qty: '5-7',
        rateCount: 389,
        orderDate: "Orderd 2 days ago",
      ),
    );
    return _list;
  }

  List<RecommendedOrders> getRecommendedOrders() {
    var _list = List<RecommendedOrders>();
    _list.add(
      RecommendedOrders(
        id: 0,
        name: 'Chicken Drumstick',
        imgUrl:
            'https://www.flaticon.com/svg/static/icons/svg/2243/2243653.svg',
        price: '120',
        netWt: '520gms',
      ),
    );

    _list.add(
      RecommendedOrders(
        id: 1,
        name: 'Chicken Curry Cut',
        imgUrl:
        'https://www.flaticon.com/svg/static/icons/svg/2243/2243653.svg',
        price: '90',
        netWt: '340gms',
      ),
    );

    _list.add(
      RecommendedOrders(
        id: 2,
        name: 'Chicken Breast',
        imgUrl:
        'https://www.flaticon.com/svg/static/icons/svg/2243/2243653.svg',
        price: '84',
        netWt: '250gms',
      ),
    );

    return _list;
  }
}
