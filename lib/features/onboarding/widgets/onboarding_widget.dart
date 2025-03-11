import 'package:flutter/material.dart';

class OnboardingWidget extends StatelessWidget {
  const OnboardingWidget(
      {super.key,
      required this.title,
      required this.subTitle,
      required this.image});
  final String title;
  final String subTitle;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 30,
      children: [
        Image.asset(image),
        Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          subTitle,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
        Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(69),
                gradient: LinearGradient(colors: [
                  Color(0xff25AE4B),
                  Color(0xff0F481F),
                ])),
            width: 307,
            height: 48,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(69),
                    ),
                    backgroundColor: Colors.transparent),
                onPressed: () {},
                child: Text("continue")))
      ],
    );
  }
}
