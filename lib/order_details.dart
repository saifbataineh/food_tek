import 'package:flutter/material.dart';
import 'package:food_tek/chat/chat_screen_widget.dart';
import 'package:food_tek/core/constants/app_colors.dart';
import 'package:food_tek/core/constants/app_image_strings.dart';
import 'package:food_tek/core/utils/responsive_height_width.dart';
import 'package:food_tek/order_details_widget.dart';

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
                  Row(children: [
                    Image.asset(AppImageStrings.delivery,
                        width: 50, height: 50),
                    const SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Your Delivery Hero",
                            style: Theme.of(context).textTheme.headlineSmall),
                        Text("Aleksandr V.",
                            style: Theme.of(context).textTheme.labelSmall),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 12),
                      child: const Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                            size: 15,
                          ),
                          SizedBox(width: 4),
                          Text(
                            "4.9",
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                    const Spacer(),
                    const SizedBox(width: 10),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: AppColors.containerBorderColor,
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.call, color: Colors.green),
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: AppColors.containerBorderColor),
                      child: IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ChatScreenWidget()));
                        },
                        icon: Icon(Icons.sms_rounded, color: Colors.blue),
                      ),
                    ),
                  ]),
                  Divider(
                    color: Colors.grey,
                    thickness: 1,
                  ),
                  Row(
                    children: [
                      Text(
                        "your location",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                  Container(
                    child: Row(children: [
                      Icon(
                        Icons.location_on_outlined,
                        size: 15,
                        color: Colors.green,
                      ),
                      Text(
                        "123 Al-Madina Street, Abdali, Amman, Jordan",
                        style: TextStyle(color: Colors.black, fontSize: 10),
                      ),
                    ]),
                  ),
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
