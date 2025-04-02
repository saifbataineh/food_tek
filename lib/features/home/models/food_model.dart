
class Food {
  
  final String img;
  final String name;
  final String subTitle;
  final double price;
  final double? oldPrice;
  final double rating;
  final int reviews;
  final int quantity;
  bool isFavorite;

  Food({
    required this.img,
    required this.name,
    required this.subTitle,
    required this.price,
    required this.rating,
    required this.reviews,
    this.quantity=0,
    this.oldPrice,
    this.isFavorite=false
  });
  //TODO:IMPLEMENT BLOC next

}
