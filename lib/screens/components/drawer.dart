import 'package:flutter/material.dart';
import 'package:furn_aldeaa/Constants.dart';
import 'package:furn_aldeaa/screens/account/account_screen.dart';
import 'package:furn_aldeaa/screens/orders/Orders.dart';

class DrawerMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double textSize = 15;
    return Container(
      color: Colors.white,
      width: MediaQuery.of(context).size.width * 0.7,
      child: Column(
        children: [
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(200),
                child: Image.asset(
                  'images/user-icon.png',
                  width: 80,
                  height: 80,
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Text(
            'James Smith',
            style: TextStyle(
                fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Account()));
            },
            child: Container(
              margin: const EdgeInsets.all(4.0),
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 5, bottom: 5),
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: new BorderRadius.only(
                      topLeft: const Radius.circular(40.0),
                      topRight: const Radius.circular(40.0),
                      bottomLeft: const Radius.circular(40.0),
                      bottomRight: const Radius.circular(40.0)),
                  border: Border.all(color: Colors.black)),
              child: Text(
                'Edit Account',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          SizedBox(
            height: 3.0,
            child: new Center(
              child: new Container(
                margin: new EdgeInsetsDirectional.only(start: 1.0, end: 1.0),
                height: 10.0,
                color: KLightGreyColor,
              ),
            ),
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.only(left: 10.0, right: 10, top: 20),
              children: <Widget>[
                ListTile(
                  onTap: () {
                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (BuildContext context) => Orders()));
                  },
                  leading: Icon(
                    Icons.bookmark_border,
                  ),
                  title: Text(
                    'Orders',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: textSize,
                      color: Colors.black.withOpacity(0.8),
                    ),
                  ),
                ),
                ListTile(
                  onTap: () {},
                  leading: Icon(
                    Icons.favorite_border,
                  ),
                  title: Text(
                    'Favorites',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: textSize,
                      color: Colors.black.withOpacity(0.8),
                    ),
                  ),
                ),
                ListTile(
                  onTap: () {},
                  leading: Icon(
                    Icons.add_location,
                  ),
                  title: Text(
                    'Addresses',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: textSize,
                      color: Colors.black.withOpacity(0.8),
                    ),
                  ),
                ),
                ListTile(
                  onTap: () {},
                  leading: Icon(
                    Icons.monetization_on,
                  ),
                  title: Text(
                    'Payment methods',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: textSize,
                      color: Colors.black.withOpacity(0.8),
                    ),
                  ),
                ),
                ListTile(
                  onTap: () {},
                  leading: Icon(
                    Icons.bookmark,
                  ),
                  title: Text(
                    'Promotions',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: textSize,
                      color: Colors.black.withOpacity(0.8),
                    ),
                  ),
                ),
                ListTile(
                  onTap: () {},
                  leading: Icon(
                    Icons.card_giftcard,
                  ),
                  title: Text(
                    'Invite friends',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: textSize,
                      color: Colors.black.withOpacity(0.8),
                    ),
                  ),
                ),
                ListTile(
                  onTap: () {},
                  leading: Icon(
                    Icons.help,
                  ),
                  title: Text(
                    'Help',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: textSize,
                      color: Colors.black.withOpacity(0.8),
                    ),
                  ),
                ),
                ListTile(
                  onTap: () {},
                  leading: Icon(
                    Icons.message,
                  ),
                  title: Text(
                    'Contact Us',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: textSize,
                      color: Colors.black.withOpacity(0.8),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ListTile(
                  onTap: () {},
                  leading: Icon(
                    Icons.exit_to_app,
                    color: Colors.red,
                  ),
                  title: Text(
                    'Log out',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: textSize,
                      color: Colors.black.withOpacity(0.8),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
