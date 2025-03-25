import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_tek/core/constants/app_colors.dart';
import 'package:food_tek/core/constants/app_image_strings.dart';
import 'package:food_tek/core/utils/responsive_height_width.dart';
import 'package:food_tek/features/home/models/person_model.dart';
import 'package:food_tek/features/person/screen/update_screen.dart';
import 'package:food_tek/features/person/widgets/personal_information_widget.dart';

class PersonScreen extends StatefulWidget {
  const PersonScreen({super.key});

  @override
  State<PersonScreen> createState() => _PersonScreenState();
}

bool isOnPromotionalNotifications = false;
bool isOnPushNotification = true;

class _PersonScreenState extends State<PersonScreen> {
  @override
  Widget build(BuildContext context) {
    List<PersonModel> PersonList = [
      PersonModel(
          image: AppImageStrings.person,
          name: "Zaid Abu Alhija",
          email: "zaidabualhija@gmail.com")
    ];
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text("Profile"),
      ),
      body: Center(
        child: Column(
          children: [
            PersonalInformationWidget(
              personalModel: PersonList[0],
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: AppColors.borderColor,
              ),
              width: responsiveWidth(context, 380),
              height: responsiveHeight(context, 225),
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: Text(
                          "My Account",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: .8,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: TextButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            Icon(
                              Icons.person_search_outlined,
                              color: Colors.black,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text("Personal Information",
                                style: TextStyle(color: Colors.black))
                          ],
                        )),
                  ),
                  SizedBox(
                    height: .8,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: TextButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            Icon(Icons.language, color: Colors.black),
                            SizedBox(
                              width: 5,
                            ),
                            Text("Language",
                                style: TextStyle(color: Colors.black)),
                                Spacer(),
                                Text("عربية" ,style: TextStyle(color: Colors.black),)
                          ],
                        )),
                  ),
                  SizedBox(
                    height: .8,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: TextButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            Icon(Icons.privacy_tip, color: Colors.black),
                            SizedBox(
                              width: 5,
                            ),
                            Text("Privacy Policity",
                                style: TextStyle(color: Colors.black)),
                          ],
                        )),
                  ),
                  SizedBox(
                    height: .8,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: TextButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            Icon(Icons.settings, color: Colors.black),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Settings",
                              style: TextStyle(color: Colors.black),
                            )
                          ],
                        )),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              decoration: BoxDecoration(
                  color: AppColors.borderColor,
                  borderRadius: BorderRadius.circular(15)),
              width: responsiveWidth(context, 380),
              height: responsiveHeight(context, 145),
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Text("Notification",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: TextButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            Icon(Icons.notifications, color: Colors.black),
                            SizedBox(
                              width: 5,
                            ),
                            Text("Push Notification",
                                style: TextStyle(color: Colors.black)),
                            Spacer(),
                            Transform.scale(
                              scale: 0.6,
                              child: CupertinoSwitch(
                                value: isOnPushNotification,
                                onChanged: (value) {
                                  setState(() {
                                    isOnPushNotification = value;
                                  });
                                },
                              ),
                            )
                          ],
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: TextButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            Icon(Icons.notifications_on, color: Colors.black),
                            SizedBox(
                              width: 5,
                            ),
                            Text("Promotional Notifications",
                                style: TextStyle(color: Colors.black)),
                            Spacer(),
                            Transform.scale(
                              scale: 0.6,
                              child: CupertinoSwitch(
                                value: isOnPromotionalNotifications,
                                onChanged: (value) {
                                  setState(() {
                                    isOnPromotionalNotifications = value;
                                  });
                                },
                              ),
                            )
                          ],
                        )),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              decoration: BoxDecoration(
                  color: AppColors.borderColor,
                  borderRadius: BorderRadius.circular(15)),
              width: responsiveWidth(context, 380),
              height: responsiveHeight(context, 135),
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Text("More",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: TextButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            Icon(Icons.help_outline, color: Colors.black),
                            SizedBox(
                              width: 5,
                            ),
                            Text("Help Center",
                                style: TextStyle(color: Colors.black))
                          ],
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: TextButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            Icon(Icons.logout, color: Colors.red),
                            SizedBox(
                              width: 5,
                            ),
                            Text("Log Out", style: TextStyle(color: Colors.red)),
                            
                          ],
                        )),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
