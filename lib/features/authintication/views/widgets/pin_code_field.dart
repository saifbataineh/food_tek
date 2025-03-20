import 'package:flutter/material.dart';
import 'package:food_tek/core/utils/responsive_height_width.dart';

class PinCodeField extends StatefulWidget {
  const PinCodeField({super.key});

  @override
  State<PinCodeField> createState() => _PinCodeFieldState();
}

class _PinCodeFieldState extends State<PinCodeField> {
  final int _pinLength = 4; // You can change the length of the pin here
  final List<TextEditingController> _controllers =
      List.generate(4, (index) => TextEditingController());
  final List<String> _pin = List.filled(4, "");

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(_pinLength, (index) {
              return Container(
                margin: EdgeInsets.only(right: responsiveWidth(context, 16)),
                width: responsiveWidth(context, 50),
                height: responsiveHeight(context, 50),
                child: TextField(
                  controller: _controllers[index],
                  keyboardType: TextInputType.number,
                  maxLength: 1,
                  obscureText: true, // Hide digits as they are typed
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    counterText: "", // Hide the counter text
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (value) {
                    if (value.isNotEmpty) {
                      _pin[index] = value; // Update pin with entered value
                      // Automatically move to next field
                      if (index < _pinLength - 1) {
                        FocusScope.of(context).nextFocus();
                      }
                    }
                  },
                  onEditingComplete: () {
                    // Handle when editing is complete
                  },
                ),
              );
            }),
          ),
        ),
      ],
    );
  }

  // Method to handle PIN submission
}
