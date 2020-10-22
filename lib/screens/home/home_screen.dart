import 'package:flutter/material.dart';
import 'package:furn_aldeaa/screens/cart/cart.dart';
import 'package:furn_aldeaa/screens/cart/emptyCart.dart';

import 'package:furn_aldeaa/screens/components/drawer.dart';

import 'package:furn_aldeaa/screens/Map/map.dart';
import 'package:furn_aldeaa/screens/search/filter.dart';
import 'package:furn_aldeaa/Constants.dart';
import 'package:furn_aldeaa/screens/search/search.dart';
import 'components/body.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        child: SafeArea(
          top: false,
          bottom: true,
          child: Scaffold(
            key: _scaffoldKey,
            drawer: DrawerMenu(),
            backgroundColor: Colors.white,
            appBar: AppBar(
              backgroundColor: Colors.white,
              elevation: 0,
              actions: <Widget>[
                IconButton(
                  icon: Image.asset("images/user-icon.png"),
                  onPressed: () {
                    _scaffoldKey.currentState.openDrawer();
                  },
                ),
              ],
            ),
            body: Stack(children: [
              SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Body(),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 20.0, right: 14.0, bottom: 10.0),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 45.0),
                  child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: 45,
                        decoration: BoxDecoration(
                            color: yellow.withOpacity(0.8),
                            borderRadius: BorderRadius.circular(40)),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: InkWell(
                            onTap: () => Navigator.push(
                                context,
                                new MaterialPageRoute(
                                    builder: (BuildContext context) => Cart())),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'View Cart (1)',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                                Text('\$9.99',
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.black))
                              ],
                            ),
                          ),
                        ),
                      )),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  decoration: BoxDecoration(color: Colors.white, boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ]),
                  height: 45,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton(
                          icon: Icon(Icons.search),
                          onPressed: () => {opensheet(context)}),
                      IconButton(
                          icon: Icon(Icons.format_align_center_outlined),
                          onPressed: () => {openFilterSheet(context)}),
                      IconButton(
                          icon: Icon(Icons.location_on_rounded),
                          onPressed: () => {openMapSheet(context)})
                    ],
                  ),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}

void opensheet(context) async {
  showModalBottomSheet<dynamic>(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(25.0))),
      context: (context),
      isDismissible: false,
      isScrollControlled: true,
      builder: (context) {
        return Padding(
          padding: MediaQuery.of(context).viewInsets,
          child: search(),
        );
      });
}

void openFilterSheet(context) async {
  showModalBottomSheet<dynamic>(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(25.0))),
      context: (context),
      isDismissible: false,
      isScrollControlled: true,
      builder: (context) {
        return Padding(
          padding: MediaQuery.of(context).viewInsets,
          child: Filter(),
        );
      });
}

void openMapSheet(context) async {
  showModalBottomSheet<dynamic>(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(25.0))),
      context: (context),
      isDismissible: false,
      isScrollControlled: true,
      builder: (context) {
        return Padding(
          padding: MediaQuery.of(context).viewInsets,
          child: Map(),
        );
      });
}
