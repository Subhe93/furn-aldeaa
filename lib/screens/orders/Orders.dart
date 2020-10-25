import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'components/upComing.dart';
import 'package:furn_aldeaa/models/offer_model.dart';
import 'components/PastOrders.dart';

class Orders extends StatefulWidget {
  static String id = 'orders';
  @override
  _OrdersState createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
  List<OrderModel> pastOrders = [
    OrderModel(true, 'The Pizza Factory', 'images/بيتزا مارغريتا.jpg', 5),
    OrderModel(false, 'The Pizza Factory', 'images/بيتزا الضيعة.JPG', 5),
    OrderModel(true, 'The Pizza Factory', 'images/بيتزا مارغريتا.jpg', 5),
    OrderModel(true, 'The Pizza Factory', 'images/بيتزا مارغريتا.jpg', 5),
    OrderModel(true, 'The Pizza Factory', 'images/بيتزا مارغريتا.jpg', 5),
  ];
  bool past = true;
  int segment = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Container(
            height: 30,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 60,
                ),
                Text(
                  "Orders",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                Container(
                  width: 60,
                  child: FlatButton(
                      onPressed: () => {Navigator.pop(context)},
                      child: Icon(
                        Icons.close,
                        size: 30,
                      )),
                )
              ],
            ),
          ),
          Divider(
            height: 20,
          ),
          Container(
            height: 40,
            width: 250,
            child: CupertinoSlidingSegmentedControl(
                groupValue: segment,
                backgroundColor: Colors.black12,
                children: const <int, Widget>{
                  0: Text('Past'),
                  1: Text('Upcoming'),
                },
                onValueChanged: (value) {
                  setState(() {
                    segment = value;
                    value == 0 ? past = true : past = false;
                  });
                }),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 10,
            color: Colors.black12,
          ),
          SizedBox(
            height: 20,
          ),
          past
              ? PastOrders(pastOrders: pastOrders)
              : Expanded(child: SingleChildScrollView(child: UpcomingOrder())),
        ],
      ),
    );
  }
}
