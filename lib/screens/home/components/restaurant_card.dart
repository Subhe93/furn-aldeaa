import 'package:flutter/material.dart';
import 'package:furn_aldeaa/Constants.dart';
import 'package:furn_aldeaa/models/offer_model.dart';

class RestaurantCard extends StatefulWidget {
  final Function press;
  final Resturant restaurant;
  const RestaurantCard({
    Key key,
    this.restaurant,
    this.press,
  }) : super(key: key);

  @override
  _RestaurantCardState createState() => _RestaurantCardState();
}

class _RestaurantCardState extends State<RestaurantCard> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return  InkWell(
      onTap: widget.press,
      child: Container(
        margin: EdgeInsets.only(top: 10 , bottom: 10 , left: 20 , right: 10),
        width: width,
        height: 285,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Column (
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    widget.restaurant.image,
                    height: 170,
                    width: width,
                    fit: BoxFit.fill,),
                ),
                Container(
                  width: width,
                  height: 170,
                  decoration: BoxDecoration(
                    borderRadius:BorderRadius.circular(10),
                    gradient:LinearGradient(
                      colors: [ Colors.black54,Colors.black12],
                      stops: [0.2, 10],
                      begin: Alignment.topRight,
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10 , left: 10),
              child: Column (
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left:12.0),
                    child: Text (
                      widget.restaurant.name,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle (
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox (height: 5,),
                  Row(
                    children: [
                      Icon(Icons.star,
                      color: Colors.yellow,
                        size: 20,
                      ),
                      SizedBox(width: 8,),
                      Text (
                        widget.restaurant.desc,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle (
                          fontSize: 12,
                          color: Colors.black,
                          letterSpacing: 0.8
                        ),
                      ),
                    ],
                  ),

                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.all(15.0),
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black)
                        ),
                        child: Text(widget.restaurant.distance,style: TextStyle(fontWeight: FontWeight.bold),),
                      ),
                      Container(
                        margin: const EdgeInsets.all(15.0),
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black)
                        ),
                        child: Text(widget.restaurant.price+"min",style: TextStyle(fontWeight: FontWeight.bold),),
                      ),
                      Container(
                        margin: const EdgeInsets.all(15.0),
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black)
                        ),
                        child: Text(widget.restaurant.deliveryFee,style: TextStyle(fontWeight: FontWeight.bold),),
                      ),
                    ],
                  )


                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
