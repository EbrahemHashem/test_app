class CartModel {
  final int id;
  final String? image;

  final String title;
  final int? price;
  CartModel( {
    this.image,
    required this.title,
    this.price,
    required this.id,
  });
}
