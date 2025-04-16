import 'package:food_tek/generated/l10n.dart';
import 'package:flutter/material.dart';

class OrderDetailsWidget extends StatelessWidget {
  const OrderDetailsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Container(
                width: 2,
                height: 10,
                color: Colors.green,
                margin: const EdgeInsets.only(left: 11),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12),
              child: Container(
                width: 24,
                height: 24,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.green,
                  border: Border.all(color: Colors.white, width: 2),
                ),
                child: Icon(
                  Icons.done,
                  color: Colors.white,
                    size: 15,
                ),
              ),
            ),
            Container(
              width: 2,
              height: 25,
              color: Colors.green,
              margin: const EdgeInsets.only(left: 11),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12),
              child: Container(
                width: 24,
                height: 24,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.green,
                  border: Border.all(color: Colors.white, width: 2),
                ),
                child: Icon(
                  Icons.home_work_outlined,
                  color: Colors.white,
                  size: 15,
                ),
              ),
            ),
            Container(
              width: 2,
              height: 25,
              color: Colors.green,
              margin: const EdgeInsets.only(left: 11),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12),
              child: Container(
                width: 24,
                height: 24,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.green,
                  border: Border.all(color: Colors.white, width: 2),
                ),
                child: Icon(
                  Icons.person,
                  color: Colors.white,
                    size: 15,
                ),
              ),
            ),
            Container(
              width: 2,
              height: 25,
              color: Colors.grey,
              margin: const EdgeInsets.only(left: 11),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12),
              child: Container(
                width: 24,
                height: 24,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey,
                  border: Border.all(color: Colors.white, width: 2),
                ),
                child: Icon(
                  Icons.home,
                  color: Colors.white,
                    size: 15,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              Text(
                S.of(context).order_received,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 25),
              Text(
                S.of(context).cooking_your_order,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 28),
              Text(
                S.of(context).courier_is_picking_up_order,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.green,
                  fontWeight: FontWeight.normal,
                ),
              ),
              const SizedBox(height: 25),
              Text(
                S.of(context).order_delivered,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
