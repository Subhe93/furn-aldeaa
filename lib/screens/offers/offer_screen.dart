import 'package:flutter/material.dart';
import 'package:furn_aldeaa/localization/app_localization.dart';
import 'package:furn_aldeaa/models/offer_model.dart';
import 'package:furn_aldeaa/screens/home/components/restaurant_list.dart';
import 'package:furn_aldeaa/widgets/restaurantImage.dart';

class OfferScreen extends StatefulWidget {
  List<Resturant> restaurants;
  Offer offer;

  OfferScreen({this.restaurants, this.offer});

  @override
  _OfferScreenState createState() => _OfferScreenState();
}

class _OfferScreenState extends State<OfferScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  restaurantImage(220, width, "images/Group 3667.png"),
                  Positioned(
                    bottom: 20,
                    left: 10,
                    right: 20,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            Applocalizations.of(context).translate("Pizza"),
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                                "1 + 1" +
                                    Applocalizations.of(context)
                                        .translate("Free"),
                                style: TextStyle(
                                    fontSize: 30,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold)),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
              RestaurantList(),
            ],
          ),
        ),
      ),
    );
  }
}
