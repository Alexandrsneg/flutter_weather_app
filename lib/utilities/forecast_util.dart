import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Util {
  static String getFormattedDate(DateTime dateTime){
    return DateFormat('EEE, MMM d, y').format(dateTime);
  }

  static Column getItem(IconData iconData, int value, String units){
    return Column(
      children: [
        Icon(
          iconData,
          color: Colors.black87,
          size: 28,
        ),
        SizedBox(height: 10,),
        Text('$value', style: TextStyle(color: Colors.black87, fontSize: 20)),
        SizedBox(height: 10,),
        Text('$units', style: TextStyle(fontSize: 15, color: Colors.black87),)
      ],
    );
  }
}