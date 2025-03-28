import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_tek/core/services/app_navigator_service.dart';
import 'package:food_tek/core/services/show_dialog_service.dart';
import 'package:food_tek/core/utils/responsive_height_width.dart';
import 'package:food_tek/features/favorite/controllers/cubit/favorite_cubit.dart';
import 'package:food_tek/features/home/models/food_model.dart';

class FavoriteButtonWidget extends StatefulWidget {
  const FavoriteButtonWidget({super.key, required this.foodItem});
  final Food foodItem;
  @override
  State<FavoriteButtonWidget> createState() => _FavoriteButtonWidgetState();
}

class _FavoriteButtonWidgetState extends State<FavoriteButtonWidget> {
  bool isLiked = false;
  @override
  void initState() {
    isLiked=widget.foodItem.isFavorite;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      padding: EdgeInsets.all(0),
      onPressed: () async {
        if (isLiked) {
          final result = await ShowDialogService.showActionDialog(
              onPressed: () {
                Navigator.pop(context, false);
              },
              context: context,
              actionButtonText: "Yes",
              description:
                  "Are you sure you want to remove it from favorites?");
          if (result == null) {
            return;
          }
          isLiked = result;
           widget.foodItem.isFavorite=false;
           if(!context.mounted)return;
          context.read<FavoriteCubit>().removeFromFavorite(widget.foodItem);
        } else {
          widget.foodItem.isFavorite=true;
          context.read<FavoriteCubit>().addToFavorite(widget.foodItem);
          isLiked = !isLiked;
        }
        setState(() {});
      },
      icon: Icon(
        isLiked ? Icons.favorite : Icons.favorite_border,
        color: isLiked ? Colors.red : null,
        size: responsiveWidth(context, 20),
      ),
    );
  }
}
