import 'package:flutter/material.dart';
import 'package:food_tek/core/utils/responsive_height_width.dart';

class LocationDropDownMenu extends StatefulWidget {
  const LocationDropDownMenu({super.key});

  @override
  State<LocationDropDownMenu> createState() => _LocationDropDownMenuState();
}

class _LocationDropDownMenuState extends State<LocationDropDownMenu> {
  String? location;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: responsiveWidth(context, 178),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 18,
            child: DropdownButton(
              underline: SizedBox(),
              hint: Text(
                "current location",
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 12),
              ),
              items: [
                DropdownMenuItem(
                  child: Text("New York"),
                  value: "New York",
                ),
                DropdownMenuItem(
                  value: "wgwrbwrbwrbwrbrwbwrbrbwrbrwbwrbwrbrwb",
                  child: Text("San Francisco"),
                ),
              ],
              onChanged: (value) {
                setState(() {
                  location = value;
                });
              },
            ),
          ),
          Text(
            location ?? "",
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.labelLarge,
          ),
        ],
      ),
    );
  }
}
