import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:furn_aldeaa/Constants.dart';
import 'package:furn_aldeaa/models/offer_model.dart';
import 'package:furn_aldeaa/screens/cart/editItem.dart';
import 'package:furn_aldeaa/screens/checkout/Checkout.dart';
import 'package:furn_aldeaa/widgets/popularDishs.dart';

class Cart extends StatefulWidget {
  static String id = "cart";

  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  List<cartItemModel> cartItems = [
    cartItemModel(name: 'Quattro Formaggi Pizza', price: 29.99),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Container(
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 60,
                    ),
                    Text(
                      "Your Cart - The Pizza Factory",
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
              Container(
                height: 10,
                decoration: BoxDecoration(color: Colors.black12),
              ),
              Container(
                  height: 300,
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: cartItems.length,
                    itemBuilder: (context, index) => CartItem(
                      item: cartItems[index],
                    ),
                  )),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Container(
                    height: 55,
                    child: Row(
                      children: [
                        Icon(
                          Icons.add,
                          color: yellow,
                          size: 35,
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Text(
                          'Add more items',
                          style: TextStyle(fontSize: 20, color: Colors.black54),
                        )
                      ],
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Divider(
                  height: 5,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: Container(
                    height: 55,
                    child: Row(
                      children: [
                        Icon(
                          FontAwesomeIcons.tag,
                          color: Colors.black54,
                          size: 25,
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Text(
                          'Add more Code',
                          style: TextStyle(fontSize: 20, color: Colors.black54),
                        )
                      ],
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Divider(
                  height: 5,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Container(
                  height: 45,
                  child: Center(
                    child: TextField(
                      style: TextStyle(fontSize: 18),
                      onChanged: (value) {
                        setState(() {
                          print(value);
                        });
                      },
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 5.0, horizontal: 5.0),
                          hintText: 'Add Instructions (eg. no onions)'),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Divider(
                  height: 5,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Subtotal',
                            style:
                                TextStyle(fontSize: 17, color: Colors.black54)),
                        Text('\$29.22',
                            style:
                                TextStyle(fontSize: 17, color: Colors.black54))
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Subtotal',
                            style:
                                TextStyle(fontSize: 17, color: Colors.black54)),
                        Text('\$29.22',
                            style:
                                TextStyle(fontSize: 17, color: Colors.black54))
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Total',
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.black87,
                                fontWeight: FontWeight.bold)),
                        Text('\$29.22',
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.black87,
                                fontWeight: FontWeight.bold))
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 40,
                  decoration: BoxDecoration(
                      color: yellow.withOpacity(0.8),
                      borderRadius: BorderRadius.circular(40)),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: InkWell(
                      onTap: () => Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (BuildContext context) => Checkout())),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Go to Checkout',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          // Text('\$9.99',
                          //     style:
                          //         TextStyle(fontSize: 15, color: Colors.black))
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              )
            ],
          ),
        ),
      ]),
    );
  }
}

class CartItem extends StatefulWidget {
  final cartItemModel item;

  const CartItem({
    Key key,
    this.item,
  }) : super(key: key);

  @override
  _CartItemState createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () => opensheet(context),
          child: Container(
            height: 60,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        '1',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25),
                      ),
                      Icon(
                        Icons.close,
                        size: 25,
                      ),
                      Text(widget.item.name,
                          style: TextStyle(
                              fontWeight: FontWeight.normal, fontSize: 20))
                    ],
                  ),
                  Text('\$' + widget.item.price.toString(),
                      style: TextStyle(
                          fontWeight: FontWeight.normal, fontSize: 20))
                ],
              ),
            ),
          ),
        ),
        Container(
          height: 150,
          decoration: BoxDecoration(color: Colors.black.withOpacity(0.1)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8, top: 5),
                child: Text('Popular with Order'),
              ),
              Container(
                height: 120,
                child: Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [PopularDish(), PopularDish()],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

void opensheet(context) async {
  showModalBottomSheet<dynamic>(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(25.0))),
      context: (context),
      isDismissible: false,
      isScrollControlled: true,
      builder: (context) {
        return Padding(
          padding: MediaQuery.of(context).viewInsets,
          child: Container(height: 650, child: editItem()),
        );
      });
}
