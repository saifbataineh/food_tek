import 'package:flutter/material.dart';
import 'package:food_tek/features/home/models/person_model.dart';
import 'package:food_tek/features/person/screen/update_screen.dart';

class PersonalInformationWidget extends StatelessWidget {
  final PersonModel personalModel;
  bool showEditIcon;
  PersonalInformationWidget({super.key, required this.personalModel ,this.showEditIcon=true});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
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
              if(showEditIcon)
              Transform.scale(
                scale: 0.6,
                child: IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => UpdateScreen()));
                    },
                    icon: Icon(Icons.edit)),
              )
            ],
          ),
          Text(
            personalModel.name,
            style: TextStyle(fontSize: 14),
          ),
          Text(
            personalModel.email,
            style: TextStyle(color: Colors.grey, fontSize: 10),
          ),
        ],
      ),
    );
  }
}
