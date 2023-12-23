class ProductMOdel {
  String? productName;
  String productImage;
  bool isFavourite;
  String category;
  double price;

  ProductMOdel(
      {required this.productName,
      required this.productImage,
      required this.isFavourite,
      required this.category,
      required this.price});
}
