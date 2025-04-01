import 'package:flutter/material.dart';
import 'package:food_tek/core/constants/app_colors.dart';
import 'package:food_tek/core/constants/app_image_strings.dart';
import 'package:food_tek/core/utils/responsive_height_width.dart';
import 'package:food_tek/features/track/views/widgets/delivery_guy_deatils_widget.dart';
import 'package:food_tek/features/track/views/widgets/order_details_widget.dart';
import 'package:food_tek/features/track/views/widgets/your_location_details_widget.dart';

class OrderDetails extends StatelessWidget {
  const OrderDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () => Navigator.pop(context),
          ),
          title: const Text("Order Details"),
        ),
        body: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.all(16.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            // Order Header
            Row(
              children: [
                Image.asset(AppImageStrings.order, width: 60, height: 60),
                const SizedBox(width: 16),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Order ID",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    Text("#6579-6432", style: TextStyle(color: Colors.grey)),
                    Text("25m", style: TextStyle(color: Colors.grey)),
                  ],
                ),
              ],
            ),

            const SizedBox(height: 24),

            const OrderDetailsWidget(),

            const SizedBox(height: 15),

            Container(
              width: responsiveWidth(context, 440),
              height: responsiveHeight(context, 350),
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  DeliveryGuyDetailsWidget(),
                  YourLocationDetailsWidget(),
                  SizedBox(
                    height: 15,
                  ),
                  Center(
                      child: SizedBox(
                          width: 350,
                          child: ElevatedButton(
                              onPressed: () {}, child: Text("Live Track"))))
                ],
              ),
            ),
          ]),
        )));
  }
}

