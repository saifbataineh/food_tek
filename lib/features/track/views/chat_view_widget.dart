import 'package:flutter/material.dart';
import 'package:food_tek/core/constants/app_colors.dart';
import 'package:food_tek/core/utils/responsive_height_width.dart';
import 'package:food_tek/features/track/data/models/message_model.dart';

class ChatViewWidget extends StatelessWidget {
  ChatViewWidget({
    super.key,
  });
  final List<Message> messages = [
    Message(text: "Hello chatGPT,how are you today?"),
    Message(text: "Hello,i’m fine,how can i help you?"),
    Message(text: "What is the best programming language?"),
    Message(
        text:
            "There are many programming languages ​​in the market that are used in designing and building websites, various applications and other tasks. All these languages ​​are popular in their place and in the way they are used, and many programmers learn and use them."),
    Message(text: "So explain to me more"),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: messages.length,
      separatorBuilder: (context, index) => SizedBox(
        height: responsiveHeight(context, 38),
      ),
      itemBuilder: (_, index) => Row(
        mainAxisAlignment:
            index % 2 == 0 ? MainAxisAlignment.start : MainAxisAlignment.end,
        children: [
          Container(
            decoration: BoxDecoration(
              color: index % 2 == 0 ? AppColors.greyColor : AppColors.mainColor,
              borderRadius: BorderRadius.only(
                topLeft: index % 2 == 0 ? Radius.zero : Radius.circular(25),
                bottomRight: Radius.circular(25),
                bottomLeft: Radius.circular(25),
                topRight: index % 2 == 0 ? Radius.circular(25) : Radius.zero,
              ),
            ),
            padding: EdgeInsets.symmetric(
                horizontal: responsiveWidth(context, 22),
                vertical: responsiveHeight(context, 18)),
            width: responsiveWidth(context, 250),
            child: Text(messages[index].text,
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    fontSize: 13,
                    color: index % 2 == 0 ? Colors.black : Colors.white)),
          ),
        ],
      ),
    );
  }
}
