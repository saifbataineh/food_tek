import 'package:flutter/material.dart';

class PinCodeField extends StatefulWidget {
  const PinCodeField({super.key});

  @override
  State<PinCodeField> createState() => _PinCodeFieldState();
}

class _PinCodeFieldState extends State<PinCodeField> {
  final int _pinLength = 4; // You can change the length of the pin here
  List<TextEditingController> _controllers =
      List.generate(4, (index) => TextEditingController());
  List<String> _pin = List.filled(4, "");

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(_pinLength, (index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: SizedBox(
                  width: 50,
                  height: 50,
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
                ),
              );
            }),
          ),
        ],
      ),
    );
  }

  // Method to handle PIN submission
}
