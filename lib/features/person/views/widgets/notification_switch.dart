import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotificationSwitch extends StatefulWidget {
  const NotificationSwitch({super.key});

  @override
  State<NotificationSwitch> createState() => _NotificationSwitchState();
}

class _NotificationSwitchState extends State<NotificationSwitch> {
  bool isOnPushNotification = true;
  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: 0.6,
      child: Switch.adaptive(
        value: isOnPushNotification,
        onChanged: (value) {
          setState(() {
            isOnPushNotification = value;
          });
        },
      ),
    );
  }
}
