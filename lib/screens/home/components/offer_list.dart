import 'package:flutter/material.dart';
import 'package:furn_aldeaa/screens/home/components/offer_card.dart';
import 'package:furn_aldeaa/models/offer_model.dart';
import 'package:furn_aldeaa/screens/offers/offer_screen.dart';

class OfferList extends StatefulWidget {

  @override
  _OfferListState createState() => _OfferListState();
}

class _OfferListState extends State<OfferList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: offers.length,
      itemBuilder: (context, index) => OfferCard(
        offer: offers[index],
        press: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => OfferScreen(offer: offers[index],)));
        },
      ),
    );
  }
}
