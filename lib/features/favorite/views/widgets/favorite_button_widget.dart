import 'package:flutter/material.dart';
import 'package:food_tek/core/services/app_navigator_service.dart';
import 'package:food_tek/core/services/show_dialog_service.dart';
import 'package:food_tek/core/utils/responsive_height_width.dart';

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
         // print("object2 ${result}");
          if(result==null){
return;
          }
          isLiked=result;
        } else {
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
