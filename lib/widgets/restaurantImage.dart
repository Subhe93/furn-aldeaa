import 'package:flutter/material.dart';

Widget restaurantImage(double height, double width, String imagePath) {
  return Container(
    decoration: BoxDecoration(
      gradient: LinearGradient(
        colors: [Colors.black54, Colors.black12],
        stops: [0.2, 10],
        begin: Alignment.topRight,
      ),
    ),
    height: height,
    width: width,
    child: Image.asset(
      imagePath,
      fit: BoxFit.fill,
    ),
  );
}
