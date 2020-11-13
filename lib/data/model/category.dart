class Category {
  int id;
  String name;
  String imgUrl;

  Category({this.id, this.name, this.imgUrl});

  @override
  String toString() {
    return 'Category{id: $id, name: $name, imgUrl: $imgUrl}';
  }
}
