import 'package:flutter/material.dart';
import 'package:furn_aldeaa/Constants.dart';
import 'package:furn_aldeaa/Screens/enter_adress/enter_adress.dart';
import 'package:furn_aldeaa/localization/app_localization.dart';
import 'package:furn_aldeaa/screens/home/home_screen.dart';
import 'package:furn_aldeaa/widgets/RoundedButton.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:furn_aldeaa/screens/create_account/create_account.dart';

class GetStarted extends StatefulWidget {
  static const String id = 'getStarted';

  @override
  _GetStartedState createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: yellow,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('images/Group4077.png'),
                      fit: BoxFit.cover),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20.0),
                      topLeft: Radius.circular(20.0))),
              height: 230,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    height: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 100,
                        ),
                        Text(
                          Applocalizations.of(context)
                              .translate('lets get started'),
                          style: TextStyle(
                              color: brown,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        Container(
                          width: 100,
                          child: FlatButton(
                              onPressed: () => {
                                    Navigator.pushReplacement(
                                        context,
                                        new MaterialPageRoute(
                                            builder: (BuildContext context) =>
                                                EnterAddress()))
                                  },
                              child: Text(
                                Applocalizations.of(context).translate('skip'),
                                style: TextStyle(color: brown),
                              )),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                    child: Divider(
                      color: Colors.grey.withOpacity(0.5),
                      thickness: 0.5,
                    ),
                  ),
                  RoundedButton(
                    title: Applocalizations.of(context)
                        .translate("Continue with facebook"),
                    backgroundColor: brown,
                    iconColor: Colors.white,
                    disabeld: false,
                    onPressed: () => {
                      Navigator.pushReplacement(
                          context,
                          new MaterialPageRoute(
                              builder: (BuildContext context) => HomeScreen()))
                    },
                    icon: FontAwesomeIcons.facebook,
                    textColor: Colors.white,
                    // disabeld: false,
                  ),
                  Center(
                    child: Text(
                      Applocalizations.of(context).translate("or"),
                      style: TextStyle(fontSize: 18, color: brown),
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                      child: Container(
                        height: 40,
                        child: FlatButton(
                          onPressed: () => {opensheet(context)},
                          child: Text(
                              Applocalizations.of(context)
                                  .translate('Continue with email'),
                              style: TextStyle(fontSize: 15, color: brown)),
                          textColor: brown,
                          shape: RoundedRectangleBorder(
                              side: BorderSide(
                                  color: brown,
                                  width: 2,
                                  style: BorderStyle.solid),
                              borderRadius: BorderRadius.circular(35)),
                        ),
                      ))
                ],
              ),
            ),
          ],
        ));
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
          child: CreateAccount(),
        );
      });
}
