class RecommendedOrders {
  int id;
  String name;
  String imgUrl;
  String price;
  String netWt;

  RecommendedOrders({this.id, this.name, this.imgUrl, this.price, this.netWt});

  @override
  String toString() {
    return 'RecommendedOrders{id: $id, name: $name, imgUrl: $imgUrl, price: $price, netWt: $netWt}';
  }
}
