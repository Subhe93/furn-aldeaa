

import 'package:flutter/material.dart';
import 'package:furn_aldeaa/screens/home/components/offer_card.dart';
import 'package:furn_aldeaa/screens/home/components/restaurant_card.dart';
import 'package:furn_aldeaa/models/offer_model.dart';
import 'package:furn_aldeaa/screens/offers/offer_screen.dart';
import 'package:furn_aldeaa/screens/restaurant/restaurant_screen.dart';

class RestaurantList extends StatefulWidget {
  @override
  _RestaurantListState createState() => _RestaurantListState();
}

class _RestaurantListState extends State<RestaurantList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: resturantList.length,
      itemBuilder: (context, index) => RestaurantCard(
        restaurant: resturantList[index],
        press: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => RestaurantScreen(restaurant: resturantList[index],)));
        },

      ),
      shrinkWrap: true,
      physics: ClampingScrollPhysics(),
    );

  }
}
