import 'package:flutter/material.dart';
import 'package:furn_aldeaa/localization/app_localization.dart';

import '../../../Constants.dart';

// We need satefull widget for our categories

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  // By default our first item will be selected
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    List<String> categories = [
      Applocalizations.of(context).translate("All"),
      Applocalizations.of(context).translate("Italian"),
      Applocalizations.of(context).translate("Asian"),
      Applocalizations.of(context).translate("International"),
      Applocalizations.of(context).translate("Italian"),
      Applocalizations.of(context).translate("Asian"),
      Applocalizations.of(context).translate("International")
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin),
      child: SizedBox(
        height: 30,
        child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) => buildCategory(index),
        ),
      ),
    );
  }

  Widget buildCategory(int index) {
    List<String> categories = [
      Applocalizations.of(context).translate("All"),
      Applocalizations.of(context).translate("Italian"),
      Applocalizations.of(context).translate("Asian"),
      Applocalizations.of(context).translate("International"),
      Applocalizations.of(context).translate("Italian"),
      Applocalizations.of(context).translate("Asian"),
      Applocalizations.of(context).translate("International")
    ];
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              // padding: const EdgeInsets.symmetric(
              //     horizontal: kDefaultPaddin, vertical: kDefaultPaddin / 6),
              decoration: new BoxDecoration(
                  color: selectedIndex == index
                      ? Colors.black
                      : Colors.transparent,
                  borderRadius: new BorderRadius.only(
                      topLeft: const Radius.circular(40.0),
                      topRight: const Radius.circular(40.0),
                      bottomLeft: const Radius.circular(40.0),
                      bottomRight: const Radius.circular(40.0))),
              child: Text(
                categories[index],
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color:
                      selectedIndex == index ? Colors.white : kTextLightColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
