class Order {
  int id;
  String name;
  String imgUrl;
  double price;
  String qty;
  double rate;
  int rateCount;
  String orderDate;

  Order({
    this.id,
    this.name,
    this.imgUrl,
    this.price,
    this.qty,
    this.rate,
    this.rateCount,
    this.orderDate,
  });

  @override
  String toString() {
    return 'Order{id: $id, name: $name, imgUrl: $imgUrl, price: $price, qty: $qty, rate: $rate, rateCount: $rateCount, orderDate: $orderDate}';
  }
}
