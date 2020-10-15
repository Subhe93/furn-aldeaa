import 'package:flutter/material.dart';
import 'package:furn_aldeaa/screens/components/drawer.dart';

import 'components/body.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Container(
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
          body: Body(),

        ),
      ),
    );
  }
}
