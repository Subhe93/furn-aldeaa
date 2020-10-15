import 'package:flutter/material.dart';
import 'package:furn_aldeaa/screens/home/components/offer_card.dart';
import 'package:furn_aldeaa/models/offer_model.dart';
import 'package:furn_aldeaa/screens/offers/offer_screen.dart';

import 'DishCard.dart';

class DishesList extends StatefulWidget {

  @override
  _DishesListState createState() => _DishesListState();
}

class _DishesListState extends State<DishesList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: dishes.length,
      itemBuilder: (context, index) => DishCard(
        dish: dishes[index],

      ),
    );
  }
}
