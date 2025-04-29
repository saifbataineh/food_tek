import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_tek/core/utils/responsive_height_width.dart';
import 'package:food_tek/core/widgets/current_location_widget.dart';
import 'package:food_tek/core/widgets/food_search_widget.dart';
import 'package:food_tek/core/widgets/food_favorite_grid_view_widget.dart';
import 'package:food_tek/features/favorite/controllers/cubit/favorite_cubit.dart';
import 'package:food_tek/generated/l10n.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({super.key});

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: responsiveWidth(context, 30)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: responsiveHeight(context, 25),
          children: [
            CurrentLocationWidget(),
            FoodSearchWidget(),
            Text(S.of(context).favorites,
                style: Theme.of(context).textTheme.displayMedium),
            BlocBuilder<FavoriteCubit, FavoriteState>(
              builder: (context, state) {
                return FoodFavoriteGridViewWidget(
                  foodItems: context.read<FavoriteCubit>().favorites,
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
