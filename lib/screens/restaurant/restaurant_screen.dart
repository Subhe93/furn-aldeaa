import 'package:flutter/material.dart';
import 'package:furn_aldeaa/localization/app_localization.dart';
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
    ProductCell(
        product: Product(
            title: "مجاني ١+١",
            descriptions: "اطلب بيتزا وخذ الاخرى مجانا",
            price: "20",
            image: "images/Group 3667.png")),
  ];
  List<ProductCell> Pizza = [
    ProductCell(
      product: Product(
          title: 'بيتزا الضيعه',
          descriptions: "عيجنة ايطالية،صلصة الطماطم،جبنة فرنسية",
          price: "22",
          image: "images/بيتزا الضيعة.JPG"),
    ),
    ProductCell(
      product: Product(
          title: 'بيتزاالرانش',
          descriptions: "عيجنة ايطالية،موزريلا،جبنة ،ببروني",
          price: "30",
          image: "images/بيتزا الرانش.jpg"),
    ),
    ProductCell(
      product: Product(
          title: "بيتزا الدجاج",
          descriptions: "موزريلا،شرائح دجاج،عجينة ايطالية،صلصة",
          price: "22",
          image: "images/بيتزا الدجاج.jpg"),
    ),
  ];
  List<ProductCell> pies = [
    ProductCell(
      product: Product(
          title: "طوشكا",
          descriptions: "شرئح اللحم،جبنة الشيدر،صلصة",
          price: "22",
          image: "images/طوشكا.jpg"),
    ),
    ProductCell(
      product: Product(
          title: "طوشكا",
          descriptions: "شرئح اللحم،جبنة الشيدر،صلصة",
          price: "22",
          image: "images/طوشكا.jpg"),
    ),
    ProductCell(
      product: Product(
          title: "زعتر",
          descriptions: "زعتر،جبنة",
          price: "22",
          image: "images/زعتر.jpg"),
    ),
  ];
  List<ProductCell> salad = [
    ProductCell(
      product: Product(
          title: "سلطة الباستا",
          descriptions: "جبنة يونانية،خيار،باستا",
          price: "22",
          image: "images/سلطة الباستا.jpg"),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            Theme(
              data: ThemeData(primaryColor: Colors.white),
              child: SliverAppBar(
                expandedHeight: 220,
                automaticallyImplyLeading: false,
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
                              InkWell(
                                onTap: () => Navigator.pop(context),
                                child: roundIcon(
                                    35, 35, Colors.white, Icons.arrow_back_ios),
                              ),
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
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.vertical(
                                top: Radius.circular(25.0)),
                            color: Colors.white,
                          ),
                          height: 30,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SliverList(
                delegate: SliverChildListDelegate([
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0, right: 10),
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
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0, right: 8),
                      child: Row(
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
                    ),
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            children: [
                              Text(
                                widget.restaurant.distance,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                              ),
                              Text(
                                  Applocalizations.of(context)
                                      .translate("Minutes"),
                                  style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      color: kTextColor,
                                      fontSize: 15))
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            children: [
                              Text(
                                widget.restaurant.price,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                              ),
                              Text(
                                  Applocalizations.of(context)
                                      .translate("Minimum"),
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
                padding: const EdgeInsets.only(left: 12.0, top: 12, right: 12),
                child: Row(
                  children: [
                    Text(
                      Applocalizations.of(context).translate("Featured"),
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "5" + Applocalizations.of(context).translate("Items"),
                      style: TextStyle(color: ksecondaryColor, fontSize: 20),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(height: 250, child: DishesList()),
              ),
              Container(
                height: 10,
                color: Colors.black12.withOpacity(0.03),
              ),

              //Offers
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  Applocalizations.of(context).translate("Offers"),
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              ListView.builder(
                itemCount: offers.length,
                itemBuilder: (context, index) => offers[index],
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
                      Applocalizations.of(context).translate('Pizza'),
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      Pizza.length.toString() +
                          " " +
                          Applocalizations.of(context).translate('Items'),
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
                itemBuilder: (context, index) => Pizza[index],
                shrinkWrap: true,
                physics: ClampingScrollPhysics(),
              ),

              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    Text(
                      Applocalizations.of(context).translate("Pies"),
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      pies.length.toString() +
                          " " +
                          Applocalizations.of(context).translate('Items'),
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
                itemBuilder: (context, index) => pies[index],
                shrinkWrap: true,
                physics: ClampingScrollPhysics(),
              ),

              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    Text(
                      Applocalizations.of(context).translate("Salad"),
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      salad.length.toString() +
                          " " +
                          Applocalizations.of(context).translate('Items'),
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
                itemBuilder: (context, index) => salad[index],
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
