import 'package:flutter/material.dart';
import 'package:furn_aldeaa/Constants.dart';
import 'package:furn_aldeaa/localization/app_localization.dart';

Widget PopularDish(context) {
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
                      image: AssetImage('images/كيكة العسل.jpg'),
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
                  'كيكة العسل',
                  style: TextStyle(fontSize: 15),
                ),
                Text(
                  'تحلية',
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
                        Text(Applocalizations.of(context).translate("Add"))
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
