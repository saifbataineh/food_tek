import 'package:flutter/widgets.dart';

class PersonModel {
  String image;
  String name;
  String email;
  Widget? editIcon;

  PersonModel({required this.image, required this.name, required this.email ,this.editIcon});
}
