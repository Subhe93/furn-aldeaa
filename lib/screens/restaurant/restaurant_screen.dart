import 'package:flutter/material.dart';
import 'package:furn_aldeaa/models/offer_model.dart';
import 'package:furn_aldeaa/screens/restaurant/components/dishes_list.dart';
import 'package:furn_aldeaa/widgets/restaurantImage.dart';
import 'package:furn_aldeaa/widgets/roundIcon.dart';
import 'components/productCell.dart';
import '../../Constants.dart';

class RestaurantScreen extends StatefulWidget {
  Resturant restaurant = Resturant();

  RestaurantScreen({this.restaurant});

  @override
  _RestaurantScreenState createState() => _RestaurantScreenState();
}

class _RestaurantScreenState extends State<RestaurantScreen> {
  List<ProductCell> offers = [
    ProductCell(),
  ];
  List<ProductCell> Pizza = [
    ProductCell(),
    ProductCell(),
    ProductCell(),
    ProductCell(),
    ProductCell(),
  ];
  List<ProductCell> pies = [
    ProductCell(),
    ProductCell(),
    ProductCell(),
  ];
  List<ProductCell> salad = [
    ProductCell(),
  ];
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              expandedHeight: 200,
              flexibleSpace: FlexibleSpaceBar(
                background: Stack(
                  children: [
                    restaurantImage(
                        height * 0.3, width, widget.restaurant.image),
                    Positioned(
                      top: 20,
                      left: 20,
                      child: Container(
                        width: width * 0.9,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            roundIcon(
                                35, 35, Colors.white, Icons.arrow_back_ios),
                            Row(
                              children: [
                                roundIcon(
                                    35, 35, Colors.white, Icons.info_outline),
                                roundIcon(35, 35, Colors.white,
                                    Icons.favorite_border),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SliverList(
                delegate: SliverChildListDelegate([
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 12.0),
                      child: Text(
                        widget.restaurant.name,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 20,
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
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            children: [
                              Text(
                                widget.restaurant.distance,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                              ),
                              Text('Minutes',
                                  style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      color: kTextColor,
                                      fontSize: 15))
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            children: [
                              Text(
                                widget.restaurant.price,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                              ),
                              Text('Minimum',
                                  style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      color: kTextColor,
                                      fontSize: 15))
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            children: [
                              Text(
                                widget.restaurant.deliveryFee,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                              ),
                            ],
                          ),
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
                    margin:
                        new EdgeInsetsDirectional.only(start: 1.0, end: 1.0),
                    height: 10.0,
                    color: KLightGreyColor,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12.0, top: 12),
                child: Row(
                  children: [
                    Text(
                      "Featured",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "5 Items",
                      style: TextStyle(color: ksecondaryColor, fontSize: 20),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(height: 250, child: DishesList()),
              Container(
                height: 10,
                color: Colors.black12.withOpacity(0.03),
              ),

              //Offers
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  'Offers',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              ListView.builder(
                itemCount: offers.length,
                itemBuilder: (context, index) => ProductCell(),
                shrinkWrap: true,
                physics: ClampingScrollPhysics(),
              ),

              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    Text(
                      'Pizza',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      Pizza.length.toString() + ' Items',
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 20,
                          color: kTextColor),
                    ),
                  ],
                ),
              ),
              ListView.builder(
                itemCount: Pizza.length,
                itemBuilder: (context, index) => ProductCell(),
                shrinkWrap: true,
                physics: ClampingScrollPhysics(),
              ),

              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    Text(
                      'Pies',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      pies.length.toString() + ' Items',
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 20,
                          color: kTextColor),
                    ),
                  ],
                ),
              ),

              ListView.builder(
                itemCount: pies.length,
                itemBuilder: (context, index) => ProductCell(),
                shrinkWrap: true,
                physics: ClampingScrollPhysics(),
              ),

              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    Text(
                      'Salad',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      salad.length.toString() + ' Items',
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 20,
                          color: kTextColor),
                    ),
                  ],
                ),
              ),
              ListView.builder(
                itemCount: salad.length,
                itemBuilder: (context, index) => ProductCell(),
                shrinkWrap: true,
                physics: ClampingScrollPhysics(),
              ),
              SizedBox(
                height: 100,
              )
            ]))
          ],
        ),
      ),
    );
  }
}
