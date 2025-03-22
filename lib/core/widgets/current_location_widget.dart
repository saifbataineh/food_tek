import 'package:flutter/material.dart';
import 'package:food_tek/core/constants/app_colors.dart';
import 'package:food_tek/core/utils/responsive_height_width.dart';
import 'package:food_tek/core/widgets/location_drop_down_menu.dart';

class CurrentLocationWidget extends StatelessWidget {
  const CurrentLocationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        children: [
          Container(
            width: responsiveWidth(context, 34),
            height: responsiveHeight(context, 34),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: Colors.white,
            ),
            child: Icon(
              size: 18,
              Icons.location_on,
              color: AppColors.mainColor,
            ),
          ),
          SizedBox(width: responsiveWidth(context, 3.5)),
          LocationDropDownMenu(),
          const Spacer(),
          Container(
            width: responsiveWidth(context, 34),
            height: responsiveHeight(context, 34),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: AppColors.lightergreyColor,
            ),
            child: Badge(
              label: Container(),
              child: IconButton(
                padding: EdgeInsets.zero,
                onPressed: () {
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
                                         Text("All"),
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
                icon: const Icon(size: 18, Icons.notifications),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
