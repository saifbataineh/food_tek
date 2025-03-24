import 'package:flutter/widgets.dart';

class Food {
  
  String img;
  String name;
  String subTitle;
  double price;
  double? oldPrice;
  double rating;
  int reviews;
  int quantity;

  Food({
    required this.img,
    required this.name,
    required this.subTitle,
    required this.price,
    required this.rating,
    required this.reviews,
    this.quantity=0,
    this.oldPrice
  });
  //TODO:IMPLEMENT BLOC next

}
