import 'package:flutter/material.dart';
import 'package:furn_aldeaa/localization/app_localization.dart';
import 'package:furn_aldeaa/models/offer_model.dart';
import 'package:furn_aldeaa/screens/Map/conponents/restaurantMiniCard.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class Favorites extends StatefulWidget {
  static String id = 'favorites';

  @override
  _FavoritesState createState() => _FavoritesState();
}

class _FavoritesState extends State<Favorites> {
  List<Widget> restaurants = [
    RestaurantMiniCard(),
  ];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 30,
          ),
          Container(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 60,
                ),
                Text(
                  Applocalizations.of(context).translate("Favorites"),
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                Container(
                  width: 60,
                  child: FlatButton(
                      onPressed: () => {Navigator.pop(context)},
                      child: Icon(Icons.cancel)),
                )
              ],
            ),
          ),
          Divider(
            height: 5,
          ),
          Expanded(
            child: Container(
              width: width,
              child: ListView.builder(
                itemCount: restaurants.length,
                itemBuilder: (context, index) {
                  return Slidable(
                    child: restaurants[index],
                    actionExtentRatio: 0.25,
                    actionPane: SlidableDrawerActionPane(),
                    secondaryActions: [
                      IconSlideAction(
                        caption:
                            Applocalizations.of(context).translate("Delete"),
                        color: Colors.red,
                        icon: Icons.delete,
                        onTap: () => {
                          setState(() => {restaurants.removeAt(index)})
                        },
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
