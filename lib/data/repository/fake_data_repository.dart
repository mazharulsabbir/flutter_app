import 'package:flutter_app/data/model/category.dart';
import 'package:flutter_app/data/model/dish_item.dart';
import 'package:flutter_app/data/model/recent_order.dart';

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
        dish: Dish(
          id: 2,
          name: 'Chicken Breast',
          imgUrl:
          'https://www.flaticon.com/svg/static/icons/svg/2243/2243653.svg',
          price: '84',
          rating: 5.0,
          ratingCount: 67,
          noOfPieces: '5-7',
          netWt: '520gms',
          instruction:
          'For that craving to bite into something chunky and juice. '
              'Dark, tender meat with bone'
              'from the lower leg of the chicken.',
        ),
        orderDate: "Orderd 2 days ago",
      ),
    );
    _list.add(
      Order(
        id: 1,
        dish: Dish(
          id: 2,
          name: 'Chicken Breast',
          imgUrl:
          'https://www.flaticon.com/svg/static/icons/svg/2243/2243653.svg',
          price: '84',
          rating: 5.0,
          ratingCount: 67,
          noOfPieces: '5-7',
          netWt: '520gms',
          instruction:
          'For that craving to bite into something chunky and juice. '
              'Dark, tender meat with bone'
              'from the lower leg of the chicken.',
        ),
        orderDate: "Orderd 2 days ago",
      ),
    );
    _list.add(
      Order(
        id: 2,
        dish: Dish(
          id: 2,
          name: 'Chicken Breast',
          imgUrl:
          'https://www.flaticon.com/svg/static/icons/svg/2243/2243653.svg',
          price: '84',
          rating: 5.0,
          ratingCount: 67,
          noOfPieces: '5-7',
          netWt: '520gms',
          instruction:
          'For that craving to bite into something chunky and juice. '
              'Dark, tender meat with bone'
              'from the lower leg of the chicken.',
        ),
        orderDate: "Orderd 2 days ago",
      ),
    );
    _list.add(
      Order(
        id: 3,
        dish: Dish(
          id: 2,
          name: 'Chicken Breast',
          imgUrl:
          'https://www.flaticon.com/svg/static/icons/svg/2243/2243653.svg',
          price: '84',
          rating: 5.0,
          ratingCount: 67,
          noOfPieces: '5-7',
          netWt: '520gms',
          instruction:
          'For that craving to bite into something chunky and juice. '
              'Dark, tender meat with bone'
              'from the lower leg of the chicken.',
        ),
        orderDate: "Orderd 2 days ago",
      ),
    );
    _list.add(
      Order(
        id: 4,
        dish: Dish(
          id: 2,
          name: 'Chicken Breast',
          imgUrl:
          'https://www.flaticon.com/svg/static/icons/svg/2243/2243653.svg',
          price: '84',
          rating: 5.0,
          ratingCount: 67,
          noOfPieces: '5-7',
          netWt: '520gms',
          instruction:
          'For that craving to bite into something chunky and juice. '
              'Dark, tender meat with bone'
              'from the lower leg of the chicken.',
        ),
        orderDate: "Orderd 2 days ago",
      ),
    );
    return _list;
  }

  List<Dish> getDishItemList() {
    var _list = List<Dish>();
    _list.add(
      Dish(
        id: 0,
        name: 'Chicken Drumstick',
        imgUrl:
            'https://www.flaticon.com/svg/static/icons/svg/2243/2243653.svg',
        price: '120',
        rating: 5.0,
        ratingCount: 67,
        noOfPieces: '5-7',
        netWt: '520gms',
        instruction:
            'For that craving to bite into something chunky and juice. '
            'Dark, tender meat with bone'
            'from the lower leg of the chicken.',
      ),
    );

    _list.add(
      Dish(
        id: 1,
        name: 'Chicken Curry Cut',
        imgUrl:
            'https://www.flaticon.com/svg/static/icons/svg/2243/2243653.svg',
        price: '90',
        rating: 5.0,
        ratingCount: 67,
        noOfPieces: '5-7',
        netWt: '520gms',
        instruction:
        'For that craving to bite into something chunky and juice. '
            'Dark, tender meat with bone'
            'from the lower leg of the chicken.',
      ),
    );

    _list.add(
      Dish(
        id: 2,
        name: 'Chicken Breast',
        imgUrl:
            'https://www.flaticon.com/svg/static/icons/svg/2243/2243653.svg',
        price: '84',
        rating: 5.0,
        ratingCount: 67,
        noOfPieces: '5-7',
        netWt: '520gms',
        instruction:
        'For that craving to bite into something chunky and juice. '
            'Dark, tender meat with bone'
            'from the lower leg of the chicken.',
      ),
    );

    return _list;
  }
}
