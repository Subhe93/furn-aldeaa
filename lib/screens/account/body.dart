import 'package:flutter/material.dart';

import '../../Constants.dart';

class AccountBody extends StatefulWidget {
  @override
  _AccountBodyState createState() => _AccountBodyState();
}

class _AccountBodyState extends State<AccountBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          SingleChildScrollView(
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 170,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ListTile(
                        title: Text('First Name'),
                        subtitle: Text('James'),
                        trailing: Icon(Icons.arrow_forward_ios),
                      ),
                      SizedBox(
                        height: 3.0,
                        child: new Center(
                          child: new Container(
                            margin: new EdgeInsetsDirectional.only(
                                start: 1.0, end: 1.0),
                            height: 10.0,
                            color: KLightGreyColor,
                          ),
                        ),
                      ),
                      ListTile(
                        title: Text('Last Name'),
                        subtitle: Text('Smith'),
                        trailing: Icon(Icons.arrow_forward_ios),
                      ),
                      SizedBox(
                        height: 3.0,
                        child: new Center(
                          child: new Container(
                            margin: new EdgeInsetsDirectional.only(
                                start: 1.0, end: 1.0),
                            height: 10.0,
                            color: KLightGreyColor,
                          ),
                        ),
                      ),
                      ListTile(
                        title: Text('Phone Number'),
                        subtitle: Text('0755 000 000'),
                        trailing: Icon(Icons.arrow_forward_ios),
                      ),
                      SizedBox(
                        height: 3.0,
                        child: new Center(
                          child: new Container(
                            margin: new EdgeInsetsDirectional.only(
                                start: 1.0, end: 1.0),
                            height: 10.0,
                            color: KLightGreyColor,
                          ),
                        ),
                      ),
                      ListTile(
                        title: Text('Email Address'),
                        subtitle: Text('jamessmith@gmail.com'),
                        trailing: Icon(Icons.arrow_forward_ios),
                      ),
                      SizedBox(
                        height: 3.0,
                        child: new Center(
                          child: new Container(
                            margin: new EdgeInsetsDirectional.only(
                                start: 1.0, end: 1.0),
                            height: 10.0,
                            color: KLightGreyColor,
                          ),
                        ),
                      ),
                      ListTile(
                        title: Text('Password'),
                        subtitle: Text('*******'),
                        trailing: Icon(Icons.arrow_forward_ios),
                      ),
                      SizedBox(
                        height: 3.0,
                        child: new Center(
                          child: new Container(
                            margin: new EdgeInsetsDirectional.only(
                                start: 1.0, end: 1.0),
                            height: 10.0,
                            color: KLightGreyColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget row() {
  return Row(
    mainAxisSize: MainAxisSize.max,
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Container(
        height: 80,
        width: 80,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(40),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.9),
              spreadRadius: 1,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Icon(
          Icons.person,
          color: brown,
          size: 30,
        ),
      ),
      SizedBox(
        width: 20,
      ),
      Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Name',
            style: TextStyle(
              fontSize: 15,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Hello Shlll',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
        ],
      ),
    ],
  );
}
