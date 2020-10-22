import 'package:flutter/material.dart';
import 'package:furn_aldeaa/Constants.dart';

Widget PopularDish() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      height: 120,
      width: 300,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(15)),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 100,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('images/سلطة الباستا.jpg'),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(15)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Choclate Pancackes',
                  style: TextStyle(fontSize: 15),
                ),
                Text(
                  'Desert',
                  style: TextStyle(fontSize: 12),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text('\$2.99'),
                    SizedBox(
                      width: 70,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.add,
                          color: yellow,
                        ),
                        Text('Add')
                      ],
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    ),
  );
}
