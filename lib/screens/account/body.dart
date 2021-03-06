import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:furn_aldeaa/localization/app_localization.dart';
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
                    height: 100,
                  ),
                  Stack(
                    children: <Widget>[
                      Container(
                        height: 110,
                        width: 100,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.black12),
                        child: Stack(children: [
                          Center(
                            child: Icon(
                              FontAwesomeIcons.userAlt,
                              color: Colors.black54,
                              size: 60,
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle, color: yellow),
                              child: Icon(
                                Icons.edit,
                                color: Colors.black54,
                                size: 15,
                              ),
                            ),
                          ),
                        ]),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ListTile(
                        title: Text(Applocalizations.of(context)
                            .translate("First Name")),
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
                        title: Text(Applocalizations.of(context)
                            .translate("Last Name")),
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
                        title: Text(Applocalizations.of(context)
                            .translate("Phone Number")),
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
                        title: Text(Applocalizations.of(context)
                            .translate("Email Address")),
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
                        title: Text(
                            Applocalizations.of(context).translate("Password")),
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
            "Name",
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
