import 'package:flutter/material.dart';
import 'package:furn_aldeaa/Constants.dart';
import 'package:furn_aldeaa/localization/app_localization.dart';

class EmptyCart extends StatefulWidget {
  static String id = 'empty_cart';

  @override
  _EmptyCartState createState() => _EmptyCartState();
}

class _EmptyCartState extends State<EmptyCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Column(
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
                        Applocalizations.of(context).translate("Your Cart"),
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      Container(
                        width: 60,
                        child: FlatButton(
                            onPressed: () => {Navigator.pop(context)},
                            child: Icon(
                              Icons.close,
                              size: 30,
                            )),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 10,
                  decoration: BoxDecoration(color: Colors.black12),
                ),
              ],
            ),
          ),
          Container(
            height: 300,
            child: Column(
              children: [
                Icon(
                  Icons.remove_circle_outline_outlined,
                  size: 250,
                  color: Colors.black12,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  Applocalizations.of(context).translate("Your Cart is Empty"),
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 30.0),
            child: InkWell(
              onTap: () => Navigator.pop(context),
              child: Container(
                height: 60,
                decoration: BoxDecoration(
                    color: yellow.withOpacity(0.8),
                    borderRadius: BorderRadius.circular(40)),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        Applocalizations.of(context)
                            .translate("Search Restaurants"),
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
