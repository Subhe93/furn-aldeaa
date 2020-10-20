import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:furn_aldeaa/Constants.dart';

class Cart extends StatefulWidget {
  static String id = "cart";
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
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
                          Text('Quattro Formaggi Pizza',
                              style: TextStyle(
                                  fontWeight: FontWeight.normal, fontSize: 20))
                        ],
                      ),
                      Text('\$29.99',
                          style: TextStyle(
                              fontWeight: FontWeight.normal, fontSize: 20))
                    ],
                  ),
                ),
              ),
              Container(
                height: 180,
                decoration: BoxDecoration(color: Colors.black.withOpacity(0.1)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Popular with Order'),
                    ),
                    Container(
                      height: 140,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [PopularDish(), PopularDish()],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Container(
                    height: 60,
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
                  height: 10,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: Container(
                    height: 60,
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
                  height: 10,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Container(
                  height: 50,
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
                  height: 10,
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
                      height: 10,
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
                      height: 10,
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
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 60,
                  decoration: BoxDecoration(
                      color: yellow.withOpacity(0.8),
                      borderRadius: BorderRadius.circular(40)),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: InkWell(
                      onTap: () => Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (BuildContext context) => Cart())),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'View Cart (1)',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          Text('\$9.99',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.black))
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ]),
    );
  }

  Widget PopularDish() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 120,
        width: 300,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(15)),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 100,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/سلطة الباستا.jpg'),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(15)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Choclate Pancackes',
                    style: TextStyle(fontSize: 15),
                  ),
                  Text(
                    'Desert',
                    style: TextStyle(fontSize: 12),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text('\$2.99'),
                      SizedBox(
                        width: 70,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.add,
                            color: yellow,
                          ),
                          Text('Add')
                        ],
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
