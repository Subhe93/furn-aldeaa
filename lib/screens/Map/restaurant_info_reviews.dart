import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:latlong/latlong.dart';

class RestaurantInfoRivews extends StatefulWidget {
  static String id = "restaurant_info_reviews";

  @override
  _RestaurantInfoRivewsState createState() => _RestaurantInfoRivewsState();
}

class _RestaurantInfoRivewsState extends State<RestaurantInfoRivews> {
  bool info = true;
  int segment = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 650,
      child: Column(
        children: [
          Container(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 60,
                ),
                Text(
                  "The Pizza Factory",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                Container(
                  width: 60,
                  child: FlatButton(
                      onPressed: () => {Navigator.pop(context)},
                      child: Icon(Icons.cancel)),
                )
              ],
            ),
          ),
          Divider(
            height: 5,
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 40,
            child: CupertinoSlidingSegmentedControl(
                groupValue: segment,
                backgroundColor: Colors.black12,
                children: const <int, Widget>{
                  0: Text('info'),
                  1: Text('reviews'),
                },
                onValueChanged: (value) {
                  setState(() {
                    segment = value;
                    value == 0 ? info = true : info = false;
                  });
                  print(info);
                }),
          ),
          SizedBox(
            height: 10,
          ),
          info ? RestaurantInfo() : RestaurantReview()
        ],
      ),
    );
  }
}

class RestaurantReview extends StatelessWidget {
  const RestaurantReview({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
              child: Stack(
            children: [
              Align(
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '4.5',
                        style: TextStyle(
                            fontSize: 40, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: RatingBar(
                        initialRating: 4,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                        itemBuilder: (context, _) => Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                      ),
                    ),
                    Text('Out of 4 Reviews')
                  ],
                ),
              )
            ],
          )),
          SizedBox(
            height: 20,
          ),
          Column(
            children: [ReviewCell(), ReviewCell()],
          )
        ],
      ),
    );
  }
}

class ReviewCell extends StatelessWidget {
  const ReviewCell({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Divider(
            height: 20,
            color: Colors.black87,
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Harry Brown',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              RatingBar(
                initialRating: 4,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: false,
                itemCount: 5,
                itemSize: 20,
                itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                itemBuilder: (context, _) => Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Text('20 Feb at 2020 at 10:10'),
          SizedBox(
            height: 10,
          ),
          Text(
            'review Text review Text Review Text review Text review Text Review Text review Text review Text Review Text review Text review Text Review Text ',
            style: TextStyle(fontSize: 18, color: Colors.black38),
          )
        ],
      ),
    );
  }
}

class RestaurantInfo extends StatelessWidget {
  const RestaurantInfo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0, right: 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: 200,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
            child: FlutterMap(
              options: new MapOptions(
                bounds: LatLngBounds(LatLng(45.5, 44.1), LatLng(44.5, 44.09)),
                boundsOptions: FitBoundsOptions(padding: EdgeInsets.all(50.0)),
              ),
              layers: [
                new TileLayerOptions(
                    urlTemplate:
                        "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
                    subdomains: ['a', 'b', 'c']),
                new MarkerLayerOptions(
                  markers: [
                    new Marker(
                        width: 70.0,
                        height: 70.0,
                        point: new LatLng(44.5, 44.09),
                        builder: (ctx) => CustomMarker('The Pizza Factory')),
                    Marker(
                        width: 70,
                        height: 70,
                        point: LatLng(45.5, 44.1),
                        builder: (ctx) => CustomMarker('Home'))
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  Icons.location_on_outlined,
                  color: Colors.black26,
                  size: 35,
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Address',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text('Strada brasove nr.32 , Bucharest , Romania'),
                    Divider(
                      height: 10,
                    )
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  FontAwesomeIcons.clock,
                  color: Colors.black26,
                  size: 30,
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'Delivery Time',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text(
                        'Sundy',
                        style: TextStyle(),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Text('10:30 - 22:30 '),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Text(
                        'Monday - Thursday',
                        style: TextStyle(),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Text('10:30 - 22:30 '),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Text(
                        'Friday _ Saturday',
                        style: TextStyle(),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Text('10:30 - 22:30 '),
                    )
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  Icons.attach_money_sharp,
                  color: Colors.black26,
                  size: 35,
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Payment Options',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 55,
                            child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Icon(
                                FontAwesomeIcons.creditCard,
                                size: 35,
                              ),
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(
                                    width: 2, color: Colors.black26)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 55,
                            child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Icon(
                                FontAwesomeIcons.dollarSign,
                                size: 35,
                              ),
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(
                                    width: 2, color: Colors.black26)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 55,
                            child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Icon(
                                FontAwesomeIcons.applePay,
                                size: 35,
                              ),
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(
                                    width: 2, color: Colors.black26)),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}

// ignore: non_constant_identifier_names
Widget CustomMarker(name) {
  return new Container(
    child: InkWell(
      onTap: () => {},
      child: Column(
        children: [
          Icon(
            Icons.location_on_outlined,
            size: 30,
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.black12, borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(
                name,
                style: TextStyle(fontSize: 10),
                textAlign: TextAlign.center,
              ),
            ),
          )
        ],
      ),
    ),
  );
}
