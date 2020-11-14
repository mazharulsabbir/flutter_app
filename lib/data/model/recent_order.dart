import 'dish_item.dart';

class Order {
  int id;
  Dish dish;
  String orderDate;

  Order({this.id, this.dish, this.orderDate});

  @override
  String toString() {
    return 'Order{id: $id, dish: $dish, orderDate: $orderDate}';
  }
}
