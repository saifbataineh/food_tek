import 'package:flutter/material.dart';
import 'package:food_tek/chat/chat_screen_widget.dart';

class Chat extends StatelessWidget {
  const Chat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back),
        ),
        title: Text("chat"),
      ),
      body: ChatScreenWidget(),
    );
  }
}
