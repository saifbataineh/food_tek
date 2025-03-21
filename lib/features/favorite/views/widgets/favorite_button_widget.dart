import 'package:flutter/material.dart';

class FavoriteButtonWidget extends StatefulWidget {
  const FavoriteButtonWidget({super.key});

  @override
  State<FavoriteButtonWidget> createState() => _FavoriteButtonWidgetState();
}

class _FavoriteButtonWidgetState extends State<FavoriteButtonWidget> {
  bool isLiked = true;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      padding: EdgeInsets.all(0),
      onPressed: () {
        setState(() {
          isLiked = !isLiked;
        });
      },
      icon: Icon(
        isLiked ? Icons.favorite : Icons.favorite_border,
        color: isLiked ? Colors.red : null,
      ),
    );
  }
}
