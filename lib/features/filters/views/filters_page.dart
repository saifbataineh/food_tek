import 'package:flutter/material.dart';
import 'package:food_tek/core/constants/app_colors.dart';
import 'package:food_tek/core/utils/responsive_height_width.dart';
import 'package:food_tek/core/widgets/current_location_widget.dart';
import 'package:food_tek/features/filters/views/widgets/discount_slider_widget.dart';
import 'package:food_tek/features/filters/views/widgets/min_max_widget.dart';
import 'package:food_tek/features/filters/views/widgets/price_range_slider_widget.dart';
import 'package:food_tek/features/filters/views/widgets/signle_filter_chip_widget.dart';

class FiltersPage extends StatelessWidget {
  const FiltersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: responsiveWidth(context, 22)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: CurrentLocationWidget(),
              ),
              SizedBox(
                height: responsiveHeight(context, 22),
              ),
              Text(
                "Filter",
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    fontWeight: FontWeight.w600, color: AppColors.redyBlack),
              ),
              SizedBox(
                height: responsiveHeight(context, 8),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: responsiveHeight(context, 24),
                children: [
                  Text(
                    "Price range",
                    style: Theme.of(context)
                        .textTheme
                        .labelSmall!
                        .copyWith(color: AppColors.blueGrey),
                  ),
                  MinMaxWidget(),
                  PriceRangeSliderWidget(),
                  Text(
                    "Discount",
                    style: Theme.of(context)
                        .textTheme
                        .labelSmall!
                        .copyWith(color: AppColors.blueGrey),
                  ),
                  MinMaxWidget(),
                  DiscountSliderWidget(),
                  Text(
                    "Category",
                    style: Theme.of(context)
                        .textTheme
                        .labelSmall!
                        .copyWith(color: AppColors.blueGrey),
                  ),
                  Wrap(spacing: responsiveWidth(context, 16), children: [
                    SignleFilterChipWidget(
                      title: 'Fast Food',
                    ),
                    SignleFilterChipWidget(title: "Sea Food"),
                    SignleFilterChipWidget(title: "Dessert"),
                  ]),
                  Text(
                    "Location",
                    style: Theme.of(context)
                        .textTheme
                        .labelSmall!
                        .copyWith(color: AppColors.blueGrey),
                  ),
                  Wrap(spacing: responsiveWidth(context, 16), children: [
                    SignleFilterChipWidget(
                      title: '1 KM',
                    ),
                    SignleFilterChipWidget(title: "5 KM"),
                    SignleFilterChipWidget(title: "10 KM"),
                  ]),
                  Text(
                    "Dish",
                    style: Theme.of(context)
                        .textTheme
                        .labelSmall!
                        .copyWith(color: AppColors.blueGrey),
                  ),
                  Wrap(
                      runSpacing: responsiveHeight(context, 24),
                      spacing: responsiveWidth(context, 16),
                      children: [
                        SignleFilterChipWidget(
                          title: 'Tuna Tartare',
                        ),
                        SignleFilterChipWidget(
                          title: 'Spicy Crab Cakes',
                        ),
                        SignleFilterChipWidget(
                          title: 'Seafood Paella',
                        ),
                        SignleFilterChipWidget(title: "Clam Chowder"),
                        SignleFilterChipWidget(title: "Miso-Glazed Cod"),
                        SignleFilterChipWidget(title: "Lobster Thermidor"),
                      ]),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
