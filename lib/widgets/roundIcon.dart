import 'package:flutter/material.dart';

Widget roundIcon(double width, double height, Color color, IconData icon) {
  return Container(
    margin: EdgeInsets.all(5),
    width: width,
    height: height,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(100.0)),
      color: color,
    ),
    child: Icon(icon),
  );
}
