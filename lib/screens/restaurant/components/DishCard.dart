import 'package:flutter/material.dart';
import 'package:furn_aldeaa/models/offer_model.dart';
import 'package:furn_aldeaa/screens/item/item.dart';

class DishCard extends StatefulWidget {
  final Dish dish;

  DishCard({this.dish});

  @override
  _DishCardState createState() => _DishCardState();
}

class _DishCardState extends State<DishCard> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return InkWell(
      onTap: () => {
        Navigator.push(context,
            MaterialPageRoute(builder: (BuildContext context) => Item()))
      },
      child: Column(
        children: [
          Container(
            width: width * 0.6,
            height: height * 0.2,
            margin: EdgeInsets.only(left: 20, right: 0, top: 10, bottom: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 4),
                  blurRadius: 20,
                  color: Color(0xFFB0CCE1).withOpacity(0.32),
                ),
              ],
            ),
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: null,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 0.0),
                  child: Stack(
                    children: [
                      Container(
                        width: width * 0.6,
                        height: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            widget.dish.image,
                            width: 175,
                            height: 200,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Container(
                        width: width * 0.6,
                        height: 200,
                        decoration: BoxDecoration(
                          color: Colors.black26.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30.0),
            child: Container(
              width: width * 0.6,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.dish.name,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '\$' + widget.dish.price.toString(),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black54,
                    ),
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
