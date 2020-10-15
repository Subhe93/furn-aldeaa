

import 'package:flutter/material.dart';
import 'package:furn_aldeaa/screens/home/components/offer_card.dart';
import 'package:furn_aldeaa/screens/home/components/restaurant_card.dart';
import 'package:furn_aldeaa/models/offer_model.dart';
import 'package:furn_aldeaa/screens/offers/offer_screen.dart';

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
          // Navigator.push(
          //     context,
          //     MaterialPageRoute(
          //         builder: (context) => OfferScreen()));
        },

      ),
      shrinkWrap: true,
      physics: ClampingScrollPhysics(),
    );

  }
}
