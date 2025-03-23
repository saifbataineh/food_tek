import 'package:flutter/material.dart';

class PriceRangeSliderWidget extends StatefulWidget {
  const PriceRangeSliderWidget({super.key});

  @override
  State<PriceRangeSliderWidget> createState() => _PriceRangeSliderWidgetState();
}

class _PriceRangeSliderWidgetState extends State<PriceRangeSliderWidget> {
  RangeValues _currentRangeValues = const RangeValues(40, 80);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "\$0",
              style: Theme.of(context).textTheme.titleSmall,
            ),
            Text(
              "\$100",
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ],
        ),
        RangeSlider(
          
          values: _currentRangeValues,
          max: 100,
          divisions: 5,
          labels: RangeLabels(
            _currentRangeValues.start.round().toString(),
            _currentRangeValues.end.round().toString(),
          ),
          onChanged: (RangeValues values) {
            setState(() {
              _currentRangeValues = values;
            });
          },
        ),
      ],
    );
  }
}
