import 'package:flutter/material.dart';
import 'package:food_tek/core/utils/responsive_height_width.dart';
import 'package:food_tek/features/notifications/models/notification_model.dart';

class NotificationWidgets extends StatelessWidget {
  final NotificationModel notificationModel;
  const NotificationWidgets({super.key, required this.notificationModel, required List<NotificationModel> notificationList});

  @override
  Widget build(BuildContext context) {
    List <NotificationModel> NotificationList=[
      NotificationModel(name: "Zaid", message: "We’re sorry! Your order is running late. New ETA: 10:30 PM. Thanks for your patience!", date: "Last Wednesday at 9:42 AM"),
            NotificationModel(name: "Zaid", message: "We’re sorry! Your order is running late. New ETA: 10:30 PM. Thanks for your patience!", date: "Last Wednesday at 9:42 AM")
    ];
    return SafeArea(
       child: SingleChildScrollView(
         child: Container(
          color: Colors.grey,
          height: responsiveHeight(context,170),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(notificationModel.name,style: TextStyle(fontWeight: FontWeight.bold),),
                  SizedBox(height: 5,),
                  Text(notificationModel.message),
                  SizedBox(height: 5,),
                  Text(notificationModel.date ,style: TextStyle(color: Colors.tealAccent),),
                ],
              ),
            ),
          ),
          
         ),
       ),
    );
  }
}
