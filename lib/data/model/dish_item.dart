class Dish {
  int id;
  String name;
  String imgUrl;
  String price;
  double rating;
  int ratingCount;
  String noOfPieces;
  String netWt;
  String instruction;

  Dish({
    this.id,
    this.name,
    this.imgUrl,
    this.price,
    this.rating,
    this.ratingCount,
    this.noOfPieces,
    this.netWt,
    this.instruction,
  });

  @override
  String toString() {
    return 'Dish{id: $id, name: $name, imgUrl: $imgUrl, price: $price, rating: $rating, ratingCount: $ratingCount, noOfPieces: $noOfPieces, netWt: $netWt, instruction: $instruction}';
  }
}
