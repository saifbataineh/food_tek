import 'package:flutter/material.dart';
import 'package:food_tek/core/constants/app_colors.dart';
import 'package:food_tek/core/utils/responsive_height_width.dart';
import 'package:food_tek/features/notifications/models/notification_model.dart';
import 'package:food_tek/features/notifications/views/widgets/notification_widgets.dart';

class NotificationIconButton extends StatelessWidget {
  NotificationIconButton({
    super.key,
  });

  final List<NotificationModel> notificationList = [
    NotificationModel(
        name: "Delayed Order:",
        message:
            "We’re sorry! Your order is running late. New ETA: 10:30 PM. Thanks for your patience! We’re sorry! Your order is running late. New ETA: 10:30 PM. Thanks for your patience!",
        date: "Last Wednesday at 9:42 AM"),
    NotificationModel(
        name: "Promotional Offer:",
        message:
            " Craving something delicious? 🍔 Get 20% off on your next order. Use code: YUMMY20.",
        date: "Last Wednesday at 9:42 AM"),
    NotificationModel(
        name: "Promotional Offer:",
        message:
            " Craving something delicious? 🍔 Get 20% off on your next order. Use code: YUMMY20.",
        date: "Last Wednesday at 9:42 AM")
  ];
  @override
  Widget build(BuildContext context) {
    //TODO:add serivce to modalbottom sheet
    return Badge(
      label: Container(),
      child: IconButton(
        color:Theme.of(context).brightness==Brightness.dark?AppColors.black:AppColors.whiteGrey,
        padding: EdgeInsets.zero,
        onPressed: () {
          //TOOD:ADD SERVICE
          showModalBottomSheet(
            context: context,
            builder: (BuildContext context) {
              return Container(
                height: responsiveHeight(context, 700),
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: IconButton(
                            onPressed: () => Navigator.pop(context),
                            icon: const Icon(Icons.arrow_back),
                          ),
                        ),
                        const Text(
                          "Notifications",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 5),
                          child: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.more_vert),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),
                    DefaultTabController(
                      length: 3,
                      child: Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const TabBar(
                              tabAlignment: TabAlignment.center,
                              dividerColor: Colors.transparent,
                              padding: EdgeInsets.all(0),
                              labelColor: Colors.black,
                              indicatorColor: Colors.green,
                              tabs: [
                                Tab(text: "All"),
                                Tab(text: "Unread"),
                                Tab(text: "Archived"),
                              ],
                            ),
                            Expanded(
                              child: TabBarView(
                                children: [
                                  ListView.builder(
                                    itemCount: notificationList.length,
                                    itemBuilder: (context, index) {
                                      return NotificationWidgets(
                                        notificationModel:
                                            notificationList[index],
                                        notificationList: notificationList,
                                      );
                                    },
                                  ),
                                  Text("unread"),
                                  Text("archive"),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          );
        },
        icon: Icon(size: 18,
        color: Theme.of(context).brightness== Brightness.dark?AppColors.borderColor: AppColors.iconBlackColor
        ,Icons.notifications),
      ),
    );
  }
}
