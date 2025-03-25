import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class GetDateFromUserService {
  static Future<String> showPicker({required BuildContext context})async{

      final dateTime = await showDatePicker(
        
            context: context,
            initialDate: DateTime(2000),
            firstDate: DateTime(1940),
            lastDate: DateTime.now().subtract(Duration(days: 16 * 365)),

          );
          if (dateTime != null) {
            final formatedDate = DateFormat.yMd().format(dateTime);
            return formatedDate;
          }
          return "";
  }
}