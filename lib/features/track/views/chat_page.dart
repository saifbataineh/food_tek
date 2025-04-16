import 'package:flutter/material.dart';
import 'package:food_tek/core/constants/app_colors.dart';
import 'package:food_tek/core/utils/responsive_height_width.dart';
import 'package:food_tek/features/track/views/widgets/chat_view_widget.dart';
import 'package:food_tek/generated/l10n.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).chat),
      ),
      body: Padding(
        padding: EdgeInsets.only(bottom: responsiveHeight(context, 34)),
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: responsiveWidth(context, 24),
                right: responsiveWidth(context, 24),
                top: responsiveHeight(context, 25),
                bottom: responsiveHeight(context, 80),
              ),
              child: Column(
                children: [Expanded(child: ChatViewWidget())],
              ),
            ),
            Positioned(
                bottom: 0,
                left: responsiveWidth(context, 49),
                width: responsiveWidth(context, 333),
                child: TextField(
                  decoration: InputDecoration(
                      hintText:S.of(context).write_your_message,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)),
                      suffixIcon: Icon(
                        Icons.send,
                        color: AppColors.mainColor,
                      )),
                ))
          ],
        ),
      ),
    );
  }
}
