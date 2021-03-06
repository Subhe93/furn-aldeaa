import 'package:flutter/material.dart';
import 'package:furn_aldeaa/localization/app_localization.dart';
import 'package:furn_aldeaa/models/offer_model.dart';
import 'package:flutter/cupertino.dart';

class topRestaurantCard extends StatefulWidget {
  final Function press;

  final Resturant restaurant;

  const topRestaurantCard({
    Key key,
    this.restaurant,
    this.press,
  }) : super(key: key);

  @override
  _topRestaurantCardState createState() => _topRestaurantCardState();
}

class _topRestaurantCardState extends State<topRestaurantCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: InkWell(
        onTap: widget.press,
        child: Container(
          margin: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 10),
          width: 250,
          height: 310,
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
          child: Column(
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
                      width: 250,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Container(
                    width: 250,
                    height: 170,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: LinearGradient(
                        colors: [Colors.black54, Colors.black12],
                        stops: [0.2, 10],
                        begin: Alignment.topRight,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Icon(
                        widget.restaurant.favorite
                            ? CupertinoIcons.heart_fill
                            : CupertinoIcons.heart,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  widget.restaurant.freeOffer
                      ? Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              height: 30,
                              width: 70,
                              decoration: BoxDecoration(
                                  color: Colors.yellow[100].withOpacity(0.7),
                                  borderRadius: BorderRadius.circular(5)),
                              child: Center(
                                  child: Text(
                                '1+1 ' +
                                    Applocalizations.of(context)
                                        .translate("Free"),
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )),
                            ),
                          ),
                        )
                      : Container(
                          height: 0,
                          width: 0,
                        )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 12.0, right: 12),
                      child: Text(
                        widget.restaurant.name,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 20,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          widget.restaurant.desc,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.black,
                              letterSpacing: 0.8),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.all(5.0),
                            padding: const EdgeInsets.all(4.0),
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black)),
                            child: Text(
                              widget.restaurant.deliveryFee,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 12),
                            ),
                          ),
                          Row(
                            children: [
                              Container(
                                margin: const EdgeInsets.all(5.0),
                                padding: const EdgeInsets.all(3.0),
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black)),
                                child: Text(
                                  widget.restaurant.distance,
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.all(5.0),
                                padding: const EdgeInsets.all(3.0),
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black)),
                                child: Text(
                                  widget.restaurant.price +
                                      Applocalizations.of(context)
                                          .translate("min"),
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
