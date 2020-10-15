import 'package:flutter/material.dart';
import 'package:furn_aldeaa/models/offer_model.dart';
import 'package:furn_aldeaa/screens/restaurant/components/dishes_list.dart';
import 'package:furn_aldeaa/widgets/restaurantImage.dart';
import 'package:furn_aldeaa/widgets/roundIcon.dart';

import '../../Constants.dart';

class RestaurantScreen extends StatefulWidget {
  Resturant restaurant = Resturant();

  RestaurantScreen({this.restaurant});

  @override
  _RestaurantScreenState createState() => _RestaurantScreenState();
}

class _RestaurantScreenState extends State<RestaurantScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  restaurantImage(height*0.3, width, widget.restaurant.image),
                  Positioned(
                    top: 30,
                    left: 20,
                    child: Container(
                      width: width*0.9,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          roundIcon(35, 35, Colors.white, Icons.arrow_back_ios),
                          Row(
                            children: [
                              roundIcon(35, 35, Colors.white, Icons.info_outline),
                              roundIcon(35, 35, Colors.white, Icons.favorite_border),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),

                ],
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  decoration: new BoxDecoration(
                      color: Color(0xFFffffff),
                      borderRadius: new BorderRadius.only(
                        topLeft: const Radius.circular(15.0),
                        topRight: const Radius.circular(15.0),
                      )),
                  height: height * 0.7,
                  width: width,
                  child: SingleChildScrollView(
                    child:Column(
                      children: [
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
                        new SizedBox(
                          height: 10.0,
                          child: new Center(
                            child: new Container(
                              margin: new EdgeInsetsDirectional.only(start: 1.0, end: 1.0),
                              height: 10.0,
                              color: KLightGreyColor,
                            ),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left:12.0,top: 12),
                          child: Row(

                            children: [
                              Text(
                                "Featured",
                                style: TextStyle(color: Colors.black,fontSize: 20),
                              ),
                              SizedBox(width: 5,),
                              Text(
                                "5 Items",
                                style: TextStyle(color: ksecondaryColor,fontSize: 20),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 10,),
                        Container(height:350,child: DishesList())
                      ],
                    )
                  ),
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}
