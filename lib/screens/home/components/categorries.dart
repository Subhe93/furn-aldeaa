

import 'package:flutter/material.dart';

import '../../../Constants.dart';





// We need satefull widget for our categories

class Categories extends StatefulWidget {

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = ["All", "Italian", "Asian", "International","Italian", "Asian", "International"];
  // By default our first item will be selected
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin),
      child: SizedBox(
        height: 25,
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
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin,vertical: kDefaultPaddin/6),
              decoration: new BoxDecoration(
                  color: selectedIndex == index ?Colors.black : Colors.transparent,
                  borderRadius: new BorderRadius.only(
                    topLeft: const Radius.circular(40.0),
                    topRight: const Radius.circular(40.0),
                    bottomLeft: const Radius.circular(40.0),
                    bottomRight: const Radius.circular(40.0)
                  )
              ),
              child: Text(
                categories[index],
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: selectedIndex == index ? Colors.white : kTextLightColor,
                ),
              ),
            ),


          ],
        ),
      ),
    );
  }
}
