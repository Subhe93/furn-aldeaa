import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:furn_aldeaa/models/offer_model.dart';
import 'package:furn_aldeaa/screens/home/components/categorries.dart';
import 'package:furn_aldeaa/screens/home/components/offer_card.dart';
import 'package:furn_aldeaa/screens/home/components/offer_list.dart';
import 'package:furn_aldeaa/screens/home/components/restaurant_card.dart';
import 'package:furn_aldeaa/screens/home/components/restaurant_list.dart';
import 'package:furn_aldeaa/screens/home/components/topRestaurants.dart';

import '../../../Constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 14.0),
            child: Text(
              "DELIVER TO",
              style: TextStyle(color: kTextLightColor, fontSize: 15),
            ),
          ),
          Theme(
            data: ThemeData(
                accentColor: Colors.black12, dividerColor: Colors.transparent),
            child: ExpansionTile(
              title: Text(
                "Aleea Callatis",
                style: TextStyle(
                    color: Colors.black.withOpacity(0.7),
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              children: [
                Container(height: 150, width: width, child: OfferList())
              ],
            ),
          ),
          new SizedBox(
            height: 10.0,
            child: new Center(
              child: new Container(
                margin: new EdgeInsetsDirectional.only(start: 1.0, end: 1.0),
                height: 10.0,
                color: KLightGreyColor,
              ),
            ),
          ),
          Container(
            height: 370,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 14.0),
                  child: Text('Order Again',
                      style: TextStyle(
                          color: Colors.black.withOpacity(0.7),
                          fontSize: 30,
                          fontWeight: FontWeight.bold)),
                ),
                SizedBox(
                  height: 10,
                ),
                Stack(
                  children: [
                    RestaurantCard(
                      restaurant: resturant1,
                    ),
                  ],
                ),
              ],
            ),
          ),
          new SizedBox(
            height: 10.0,
            child: new Center(
              child: new Container(
                margin: new EdgeInsetsDirectional.only(start: 1.0, end: 1.0),
                height: 10.0,
                color: KLightGreyColor,
              ),
            ),
          ),
          Categories(),
          Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: Row(
              children: [
                Text(
                  "Browse",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "64 resturants",
                  style: TextStyle(color: ksecondaryColor, fontSize: 20),
                ),
              ],
            ),
          ),
          RestaurantList(),
          Padding(
            padding:
                const EdgeInsets.only(left: 18, right: 10, top: 15, bottom: 15),
            child: Container(
              decoration: BoxDecoration(
                  color: yellow.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(20)),
              height: 100,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: yellow),
                        child: Icon(
                          Icons.attach_money,
                          size: 30,
                        )),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 8.0, top: 20, right: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Get 10\$',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text('Give a Friend \$10 to try joyfood and')
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.keyboard_arrow_right,
                      size: 50,
                      color: Colors.black54,
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15, top: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      'Top 10 ',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text('restaurants',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87))
                  ],
                ),
                Text('See All',
                    style: TextStyle(fontSize: 18, color: Colors.black26)),
              ],
            ),
          ),
          Container(
            height: 360,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: resturantList.length,
              itemBuilder: (context, index) => topRestaurantCard(
                restaurant: resturantList[index],
                press: () => {},
              ),
            ),
          ),
          SizedBox(
            height: 200,
          )
        ],
      ),
    );
  }
}
