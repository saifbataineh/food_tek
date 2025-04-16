import 'package:flutter/material.dart';
import 'package:food_tek/features/home/models/person_model.dart';

class PersonalInformationWidget extends StatelessWidget {
  final PersonModel personalModel;

  const PersonalInformationWidget({super.key, required this.personalModel});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
            radius: 40,
            backgroundColor: Colors.transparent,
            child: ClipOval(
                child: Image.asset(
              personalModel.image,
              width: 85,
              height: 85,
              fit: BoxFit.cover,
            ))),
        Text(
          personalModel.name,
          style: TextStyle(fontSize: 14),
        ),
        Text(
          personalModel.email,
          style: TextStyle(color: Colors.grey, fontSize: 10),
        ),
      ],
    );
  }
}
