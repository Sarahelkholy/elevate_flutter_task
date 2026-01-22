class ProductEntity {
  final String? title;
  final double? price;
  final String? category;
  final String? image;
  final Rating? rating;

  ProductEntity({
    this.title,
    this.price,
    this.category,
    this.image,
    this.rating,
  });
}

class Rating {
  final double? rate;

  Rating({this.rate});
}
